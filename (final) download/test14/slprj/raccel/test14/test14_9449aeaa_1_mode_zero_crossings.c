#include <math.h>
#include <string.h>
#include "pm_std.h"
#include "sm_std.h"
#include "ne_std.h"
#include "ne_dae.h"
#include "sm_ssci_run_time_errors.h"
#include "sm_RuntimeDerivedValuesBundle.h"
#include "test14_9449aeaa_1_geometries.h"
const NeZCData * test14_9449aeaa_1_ZCData = NULL ; PmfMessageId
test14_9449aeaa_1_computeAsmModeVector ( const double * input , const double
* inputDot , const double * inputDdot , int * modeVector , double *
errorResult , NeuDiagnosticManager * neDiagMgr ) { ( void ) input ; ( void )
inputDot ; ( void ) inputDdot ; ( void ) modeVector ; ( void ) neDiagMgr ;
errorResult [ 0 ] = 0.0 ; return NULL ; } PmfMessageId
test14_9449aeaa_1_computeSimModeVector ( const double * input , const double
* inputDot , const double * inputDdot , int * modeVector , double *
errorResult , NeuDiagnosticManager * neDiagMgr ) { ( void ) input ; ( void )
inputDot ; ( void ) inputDdot ; ( void ) modeVector ; ( void ) neDiagMgr ;
errorResult [ 0 ] = 0.0 ; return NULL ; } PmfMessageId
test14_9449aeaa_1_computeZeroCrossings ( const RuntimeDerivedValuesBundle *
rtdv , const double * solverStateVector , const double * input , const double
* inputDot , const double * inputDdot , const double * discreteStateVector ,
double * zeroCrossingsVector , double * errorResult , NeuDiagnosticManager *
neDiagMgr ) { const double * rtdvd = rtdv -> mDoubles . mValues ; const int *
rtdvi = rtdv -> mInts . mValues ; ( void ) rtdvd ; ( void ) rtdvi ; ( void )
solverStateVector ; ( void ) input ; ( void ) inputDot ; ( void ) inputDdot ;
( void ) discreteStateVector ; ( void ) zeroCrossingsVector ; ( void )
neDiagMgr ; errorResult [ 0 ] = 0.0 ; return NULL ; }
