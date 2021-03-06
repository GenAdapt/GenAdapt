package ec.de;

import ec.*; import abc.def.genadapt.SearchRunner;
import ec.simple.*;

/* 
 * DEEvaluator.java
 * 
 * Created: Fri Aug 13 11:20:54 EDT 2010
 * By: Sean Luke
 */

/**
 * DEEvaluator is a simple subclass of SimpleEvaluator which first evaluates the population, then
 * compares each population member against the parent which had created it in Differential Evolution.
 * The parents are stored in DEBreeder.previousPopulation.  If the parent is superior to the child,
 * then the parent replaces the child in the population and the child is discarded.  This does not
 * happen in the first generation, as there are of course no parents yet.
 *
 * <p>This code could have been moved into the Breeder of course.  But then the better of the parents
 * and children would not appear in standard Statistics objects.  So we've broken it out here.
 *
 * <p>The full description of Differential Evolution may be found in the book
 * "Differential Evolution: A Practical Approach to Global Optimization"
 * by Kenneth Price, Rainer Storn, and Jouni Lampinen.
 * 
 * @author Sean Luke
 * @version 1.0
 */

public class DEEvaluator extends SimpleEvaluator
    {
    public void evaluatePopulation(EvolutionState state)
        {
        super.evaluatePopulation(state);

        if( state.breeder instanceof DEBreeder )
            {
            Population previousPopulation = ((DEBreeder)(state.breeder)).previousPopulation; // for faster access
            if( previousPopulation != null )
                {
                if( previousPopulation.subpops.size() != state.population.subpops.size())
                    state.output.fatal( "DEEvaluator requires that the population have the same number of subpopulations every generation.");
                for(int i = 0; i < previousPopulation.subpops.size(); i++ )
                    {
                    if( state.population.subpops.get(i).individuals.size() != previousPopulation.subpops.get(i).individuals.size() )
                        state.output.fatal( "DEEvaluator requires that subpopulation " + i + " should have the same number of individuals in all generations." );
                    for(int j = 0; j < state.population.subpops.get(i).individuals.size() ; j++ )
                        if( previousPopulation.subpops.get(i).individuals.get(j).fitness.betterThan( state.population.subpops.get(i).individuals.get(j).fitness ) )
                            state.population.subpops.get(i).individuals.set(j, previousPopulation.subpops.get(i).individuals.get(j));
                    }
                }
            }
        else state.output.fatal("DEEvaluator requires DEBreeder to be the breeder.");
        }
    }
