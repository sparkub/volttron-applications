# Shell script to install SimulationAgent as a VOLTTRON agent.
#
# This script should be run in a VOLTTRON virtualenv, in which $VOLTTRON_HOME
# and $VOLTTRON_ROOT have been defined as, respectively, the VOLTTRON execution
# directory and VOLTTRON's github installation directory.
#
# This is a volttron-applications agent. $VOLTTRON_ROOT should contain
# a soft link named "applications" linking to the volttron-applications github
# project installation directory.
#
#
AGENT_ROOT=$VOLTTRON_ROOT/applications/kisensum/Simulation/SimulationAgent

cd $VOLTTRON_ROOT
export VIP_SOCKET="ipc://$VOLTTRON_HOME/run/vip.socket"
python scripts/install-agent.py \
    -s $AGENT_ROOT \
    -i simulationagent \
    -c $AGENT_ROOT/simulationagent.config \
    -t simulationagent \
    -f
