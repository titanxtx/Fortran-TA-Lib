# Fortran-TA-Lib
TA-Lib for Fortran

I have tested this on gfortran-8 only right now. Not every function has been tested thoroughly but everything seems to be working correctly on Linux. I haven't tried it on any other platforms. Use the latest fortran version. Older versions before 2003 don't support certain features used like binding to C.

Make sure TA-Lib is installed on your system before using this.

The function names are the same as the ones in the C version of TA-Lib. The constants in C are all functions in Fortran. The constants use the same names in Fortran. The only differences are inHigh is high, inLow is low, inOpen is open, inClose is close, and inVolume is volume in Fortran.

The default parameters for the functions are not automatically entered in since these are bare function calls to the main C functions. You will need to enter in every optional argument.

The indexes will not be the same in Fortran as in C as Fortran starts at 1 and C starts at 0. Remember that when dealing with the indexes.

To use the module
```
use talib
```
If you only want to use a few things
```
use talib,only::TA_WMA,TA_SUM,TA_SQRT
```

Here are the function argument parameters taken from the header file in the library. Same types except in Fortran we use c_int for int or c_double for double in c.
TA_RetCode is an integer value.

Use c_double `real(kind=c_double)`for creating any arrays. All arrays need to be defined with a size and they all need to be equal in length.
Use the range in certain arguments here as a guide as to what can be entered in.

```
TA_RetCode TA_ACOS( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_AD( int    startIdx,
                  int    endIdx,
                  const double inHigh[],
                  const double inLow[],
                  const double inClose[],
                  const double inVolume[],
                  int          *outBegIdx,
                  int          *outNBElement,
                  double        outReal[] );

TA_RetCode TA_ADD( int    startIdx,
                   int    endIdx,
                   const double inReal0[],
                   const double inReal1[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_ADOSC( int    startIdx,
                     int    endIdx,
                     const double inHigh[],
                     const double inLow[],
                     const double inClose[],
                     const double inVolume[],
                     int           optInFastPeriod, /* From 2 to 100000 */
                     int           optInSlowPeriod, /* From 2 to 100000 */
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outReal[] );

TA_RetCode TA_ADX( int    startIdx,
                   int    endIdx,
                   const double inHigh[],
                   const double inLow[],
                   const double inClose[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_ADXR( int    startIdx,
                    int    endIdx,
                    const double inHigh[],
                    const double inLow[],
                    const double inClose[],
                    int           optInTimePeriod, /* From 2 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_APO( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInFastPeriod, /* From 2 to 100000 */
                   int           optInSlowPeriod, /* From 2 to 100000 */
                   TA_MAType     optInMAType,
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_AROON( int    startIdx,
                     int    endIdx,
                     const double inHigh[],
                     const double inLow[],
                     int           optInTimePeriod, /* From 2 to 100000 */
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outAroonDown[],
                     double        outAroonUp[] );

TA_RetCode TA_AROONOSC( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        int           optInTimePeriod, /* From 2 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_ASIN( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_ATAN( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_ATR( int    startIdx,
                   int    endIdx,
                   const double inHigh[],
                   const double inLow[],
                   const double inClose[],
                   int           optInTimePeriod, /* From 1 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_AVGPRICE( int    startIdx,
                        int    endIdx,
                        const double inOpen[],
                        const double inHigh[],
                        const double inLow[],
                        const double inClose[],
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_BBANDS( int    startIdx,
                      int    endIdx,
                      const double inReal[],
                      int           optInTimePeriod, /* From 2 to 100000 */
                      double        optInNbDevUp, /* From TA_REAL_MIN to TA_REAL_MAX */
                      double        optInNbDevDn, /* From TA_REAL_MIN to TA_REAL_MAX */
                      TA_MAType     optInMAType,
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outRealUpperBand[],
                      double        outRealMiddleBand[],
                      double        outRealLowerBand[] );

TA_RetCode TA_BETA( int    startIdx,
                    int    endIdx,
                    const double inReal0[],
                    const double inReal1[],
                    int           optInTimePeriod, /* From 1 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_BOP( int    startIdx,
                   int    endIdx,
                   const double inOpen[],
                   const double inHigh[],
                   const double inLow[],
                   const double inClose[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_CCI( int    startIdx,
                   int    endIdx,
                   const double inHigh[],
                   const double inLow[],
                   const double inClose[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_CDL2CROWS( int    startIdx,
                         int    endIdx,
                         const double inOpen[],
                         const double inHigh[],
                         const double inLow[],
                         const double inClose[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         int           outInteger[] );

TA_RetCode TA_CDL3BLACKCROWS( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDL3INSIDE( int    startIdx,
                          int    endIdx,
                          const double inOpen[],
                          const double inHigh[],
                          const double inLow[],
                          const double inClose[],
                          int          *outBegIdx,
                          int          *outNBElement,
                          int           outInteger[] );

TA_RetCode TA_CDL3LINESTRIKE( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDL3OUTSIDE( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDL3STARSINSOUTH( int    startIdx,
                                int    endIdx,
                                const double inOpen[],
                                const double inHigh[],
                                const double inLow[],
                                const double inClose[],
                                int          *outBegIdx,
                                int          *outNBElement,
                                int           outInteger[] );

TA_RetCode TA_CDL3WHITESOLDIERS( int    startIdx,
                                 int    endIdx,
                                 const double inOpen[],
                                 const double inHigh[],
                                 const double inLow[],
                                 const double inClose[],
                                 int          *outBegIdx,
                                 int          *outNBElement,
                                 int           outInteger[] );

TA_RetCode TA_CDLABANDONEDBABY( int    startIdx,
                                int    endIdx,
                                const double inOpen[],
                                const double inHigh[],
                                const double inLow[],
                                const double inClose[],
                                double        optInPenetration, /* From 0 to TA_REAL_MAX */
                                int          *outBegIdx,
                                int          *outNBElement,
                                int           outInteger[] );

TA_RetCode TA_CDLADVANCEBLOCK( int    startIdx,
                               int    endIdx,
                               const double inOpen[],
                               const double inHigh[],
                               const double inLow[],
                               const double inClose[],
                               int          *outBegIdx,
                               int          *outNBElement,
                               int           outInteger[] );

TA_RetCode TA_CDLBELTHOLD( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDLBREAKAWAY( int    startIdx,
                            int    endIdx,
                            const double inOpen[],
                            const double inHigh[],
                            const double inLow[],
                            const double inClose[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            int           outInteger[] );

TA_RetCode TA_CDLCLOSINGMARUBOZU( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLCONCEALBABYSWALL( int    startIdx,
                                   int    endIdx,
                                   const double inOpen[],
                                   const double inHigh[],
                                   const double inLow[],
                                   const double inClose[],
                                   int          *outBegIdx,
                                   int          *outNBElement,
                                   int           outInteger[] );

TA_RetCode TA_CDLCOUNTERATTACK( int    startIdx,
                                int    endIdx,
                                const double inOpen[],
                                const double inHigh[],
                                const double inLow[],
                                const double inClose[],
                                int          *outBegIdx,
                                int          *outNBElement,
                                int           outInteger[] );

TA_RetCode TA_CDLDARKCLOUDCOVER( int    startIdx,
                                 int    endIdx,
                                 const double inOpen[],
                                 const double inHigh[],
                                 const double inLow[],
                                 const double inClose[],
                                 double        optInPenetration, /* From 0 to TA_REAL_MAX */
                                 int          *outBegIdx,
                                 int          *outNBElement,
                                 int           outInteger[] );

TA_RetCode TA_CDLDOJI( int    startIdx,
                       int    endIdx,
                       const double inOpen[],
                       const double inHigh[],
                       const double inLow[],
                       const double inClose[],
                       int          *outBegIdx,
                       int          *outNBElement,
                       int           outInteger[] );

TA_RetCode TA_CDLDOJISTAR( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDLDRAGONFLYDOJI( int    startIdx,
                                int    endIdx,
                                const double inOpen[],
                                const double inHigh[],
                                const double inLow[],
                                const double inClose[],
                                int          *outBegIdx,
                                int          *outNBElement,
                                int           outInteger[] );

TA_RetCode TA_CDLENGULFING( int    startIdx,
                            int    endIdx,
                            const double inOpen[],
                            const double inHigh[],
                            const double inLow[],
                            const double inClose[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            int           outInteger[] );

TA_RetCode TA_CDLEVENINGDOJISTAR( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  double        optInPenetration, /* From 0 to TA_REAL_MAX */
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLEVENINGSTAR( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              double        optInPenetration, /* From 0 to TA_REAL_MAX */
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDLGAPSIDESIDEWHITE( int    startIdx,
                                   int    endIdx,
                                   const double inOpen[],
                                   const double inHigh[],
                                   const double inLow[],
                                   const double inClose[],
                                   int          *outBegIdx,
                                   int          *outNBElement,
                                   int           outInteger[] );

TA_RetCode TA_CDLGRAVESTONEDOJI( int    startIdx,
                                 int    endIdx,
                                 const double inOpen[],
                                 const double inHigh[],
                                 const double inLow[],
                                 const double inClose[],
                                 int          *outBegIdx,
                                 int          *outNBElement,
                                 int           outInteger[] );

TA_RetCode TA_CDLHAMMER( int    startIdx,
                         int    endIdx,
                         const double inOpen[],
                         const double inHigh[],
                         const double inLow[],
                         const double inClose[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         int           outInteger[] );

TA_RetCode TA_CDLHANGINGMAN( int    startIdx,
                             int    endIdx,
                             const double inOpen[],
                             const double inHigh[],
                             const double inLow[],
                             const double inClose[],
                             int          *outBegIdx,
                             int          *outNBElement,
                             int           outInteger[] );

TA_RetCode TA_CDLHARAMI( int    startIdx,
                         int    endIdx,
                         const double inOpen[],
                         const double inHigh[],
                         const double inLow[],
                         const double inClose[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         int           outInteger[] );

TA_RetCode TA_CDLHARAMICROSS( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDLHIGHWAVE( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDLHIKKAKE( int    startIdx,
                          int    endIdx,
                          const double inOpen[],
                          const double inHigh[],
                          const double inLow[],
                          const double inClose[],
                          int          *outBegIdx,
                          int          *outNBElement,
                          int           outInteger[] );

TA_RetCode TA_CDLHIKKAKEMOD( int    startIdx,
                             int    endIdx,
                             const double inOpen[],
                             const double inHigh[],
                             const double inLow[],
                             const double inClose[],
                             int          *outBegIdx,
                             int          *outNBElement,
                             int           outInteger[] );

TA_RetCode TA_CDLHOMINGPIGEON( int    startIdx,
                               int    endIdx,
                               const double inOpen[],
                               const double inHigh[],
                               const double inLow[],
                               const double inClose[],
                               int          *outBegIdx,
                               int          *outNBElement,
                               int           outInteger[] );

TA_RetCode TA_CDLIDENTICAL3CROWS( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLINNECK( int    startIdx,
                         int    endIdx,
                         const double inOpen[],
                         const double inHigh[],
                         const double inLow[],
                         const double inClose[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         int           outInteger[] );

TA_RetCode TA_CDLINVERTEDHAMMER( int    startIdx,
                                 int    endIdx,
                                 const double inOpen[],
                                 const double inHigh[],
                                 const double inLow[],
                                 const double inClose[],
                                 int          *outBegIdx,
                                 int          *outNBElement,
                                 int           outInteger[] );

TA_RetCode TA_CDLKICKING( int    startIdx,
                          int    endIdx,
                          const double inOpen[],
                          const double inHigh[],
                          const double inLow[],
                          const double inClose[],
                          int          *outBegIdx,
                          int          *outNBElement,
                          int           outInteger[] );

TA_RetCode TA_CDLKICKINGBYLENGTH( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLLADDERBOTTOM( int    startIdx,
                               int    endIdx,
                               const double inOpen[],
                               const double inHigh[],
                               const double inLow[],
                               const double inClose[],
                               int          *outBegIdx,
                               int          *outNBElement,
                               int           outInteger[] );

TA_RetCode TA_CDLLONGLEGGEDDOJI( int    startIdx,
                                 int    endIdx,
                                 const double inOpen[],
                                 const double inHigh[],
                                 const double inLow[],
                                 const double inClose[],
                                 int          *outBegIdx,
                                 int          *outNBElement,
                                 int           outInteger[] );

TA_RetCode TA_CDLLONGLINE( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDLMARUBOZU( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDLMATCHINGLOW( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDLMATHOLD( int    startIdx,
                          int    endIdx,
                          const double inOpen[],
                          const double inHigh[],
                          const double inLow[],
                          const double inClose[],
                          double        optInPenetration, /* From 0 to TA_REAL_MAX */
                          int          *outBegIdx,
                          int          *outNBElement,
                          int           outInteger[] );

TA_RetCode TA_CDLMORNINGDOJISTAR( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  double        optInPenetration, /* From 0 to TA_REAL_MAX */
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLMORNINGSTAR( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              double        optInPenetration, /* From 0 to TA_REAL_MAX */
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDLONNECK( int    startIdx,
                         int    endIdx,
                         const double inOpen[],
                         const double inHigh[],
                         const double inLow[],
                         const double inClose[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         int           outInteger[] );

TA_RetCode TA_CDLPIERCING( int    startIdx,
                           int    endIdx,
                           const double inOpen[],
                           const double inHigh[],
                           const double inLow[],
                           const double inClose[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outInteger[] );

TA_RetCode TA_CDLRICKSHAWMAN( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDLRISEFALL3METHODS( int    startIdx,
                                   int    endIdx,
                                   const double inOpen[],
                                   const double inHigh[],
                                   const double inLow[],
                                   const double inClose[],
                                   int          *outBegIdx,
                                   int          *outNBElement,
                                   int           outInteger[] );

TA_RetCode TA_CDLSEPARATINGLINES( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLSHOOTINGSTAR( int    startIdx,
                               int    endIdx,
                               const double inOpen[],
                               const double inHigh[],
                               const double inLow[],
                               const double inClose[],
                               int          *outBegIdx,
                               int          *outNBElement,
                               int           outInteger[] );

TA_RetCode TA_CDLSHORTLINE( int    startIdx,
                            int    endIdx,
                            const double inOpen[],
                            const double inHigh[],
                            const double inLow[],
                            const double inClose[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            int           outInteger[] );

TA_RetCode TA_CDLSPINNINGTOP( int    startIdx,
                              int    endIdx,
                              const double inOpen[],
                              const double inHigh[],
                              const double inLow[],
                              const double inClose[],
                              int          *outBegIdx,
                              int          *outNBElement,
                              int           outInteger[] );

TA_RetCode TA_CDLSTALLEDPATTERN( int    startIdx,
                                 int    endIdx,
                                 const double inOpen[],
                                 const double inHigh[],
                                 const double inLow[],
                                 const double inClose[],
                                 int          *outBegIdx,
                                 int          *outNBElement,
                                 int           outInteger[] );

TA_RetCode TA_CDLSTICKSANDWICH( int    startIdx,
                                int    endIdx,
                                const double inOpen[],
                                const double inHigh[],
                                const double inLow[],
                                const double inClose[],
                                int          *outBegIdx,
                                int          *outNBElement,
                                int           outInteger[] );

TA_RetCode TA_CDLTAKURI( int    startIdx,
                         int    endIdx,
                         const double inOpen[],
                         const double inHigh[],
                         const double inLow[],
                         const double inClose[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         int           outInteger[] );

TA_RetCode TA_CDLTASUKIGAP( int    startIdx,
                            int    endIdx,
                            const double inOpen[],
                            const double inHigh[],
                            const double inLow[],
                            const double inClose[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            int           outInteger[] );

TA_RetCode TA_CDLTHRUSTING( int    startIdx,
                            int    endIdx,
                            const double inOpen[],
                            const double inHigh[],
                            const double inLow[],
                            const double inClose[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            int           outInteger[] );

TA_RetCode TA_CDLTRISTAR( int    startIdx,
                          int    endIdx,
                          const double inOpen[],
                          const double inHigh[],
                          const double inLow[],
                          const double inClose[],
                          int          *outBegIdx,
                          int          *outNBElement,
                          int           outInteger[] );

TA_RetCode TA_CDLUNIQUE3RIVER( int    startIdx,
                               int    endIdx,
                               const double inOpen[],
                               const double inHigh[],
                               const double inLow[],
                               const double inClose[],
                               int          *outBegIdx,
                               int          *outNBElement,
                               int           outInteger[] );

TA_RetCode TA_CDLUPSIDEGAP2CROWS( int    startIdx,
                                  int    endIdx,
                                  const double inOpen[],
                                  const double inHigh[],
                                  const double inLow[],
                                  const double inClose[],
                                  int          *outBegIdx,
                                  int          *outNBElement,
                                  int           outInteger[] );

TA_RetCode TA_CDLXSIDEGAP3METHODS( int    startIdx,
                                   int    endIdx,
                                   const double inOpen[],
                                   const double inHigh[],
                                   const double inLow[],
                                   const double inClose[],
                                   int          *outBegIdx,
                                   int          *outNBElement,
                                   int           outInteger[] );

TA_RetCode TA_CEIL( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_CMO( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_CORREL( int    startIdx,
                      int    endIdx,
                      const double inReal0[],
                      const double inReal1[],
                      int           optInTimePeriod, /* From 1 to 100000 */
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outReal[] );

TA_RetCode TA_COS( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_COSH( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_DEMA( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInTimePeriod, /* From 2 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_DIV( int    startIdx,
                   int    endIdx,
                   const double inReal0[],
                   const double inReal1[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_DX( int    startIdx,
                  int    endIdx,
                  const double inHigh[],
                  const double inLow[],
                  const double inClose[],
                  int           optInTimePeriod, /* From 2 to 100000 */
                  int          *outBegIdx,
                  int          *outNBElement,
                  double        outReal[] );

TA_RetCode TA_EMA( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_EXP( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_FLOOR( int    startIdx,
                     int    endIdx,
                     const double inReal[],
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outReal[] );

TA_RetCode TA_HT_DCPERIOD( int    startIdx,
                           int    endIdx,
                           const double inReal[],
                           int          *outBegIdx,
                           int          *outNBElement,
                           double        outReal[] );

TA_RetCode TA_HT_DCPHASE( int    startIdx,
                          int    endIdx,
                          const double inReal[],
                          int          *outBegIdx,
                          int          *outNBElement,
                          double        outReal[] );

TA_RetCode TA_HT_PHASOR( int    startIdx,
                         int    endIdx,
                         const double inReal[],
                         int          *outBegIdx,
                         int          *outNBElement,
                         double        outInPhase[],
                         double        outQuadrature[] );

TA_RetCode TA_HT_SINE( int    startIdx,
                       int    endIdx,
                       const double inReal[],
                       int          *outBegIdx,
                       int          *outNBElement,
                       double        outSine[],
                       double        outLeadSine[] );

TA_RetCode TA_HT_TRENDLINE( int    startIdx,
                            int    endIdx,
                            const double inReal[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            double        outReal[] );

TA_RetCode TA_HT_TRENDMODE( int    startIdx,
                            int    endIdx,
                            const double inReal[],
                            int          *outBegIdx,
                            int          *outNBElement,
                            int           outInteger[] );

TA_RetCode TA_KAMA( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInTimePeriod, /* From 2 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_LINEARREG( int    startIdx,
                         int    endIdx,
                         const double inReal[],
                         int           optInTimePeriod, /* From 2 to 100000 */
                         int          *outBegIdx,
                         int          *outNBElement,
                         double        outReal[] );

TA_RetCode TA_LINEARREG_ANGLE( int    startIdx,
                               int    endIdx,
                               const double inReal[],
                               int           optInTimePeriod, /* From 2 to 100000 */
                               int          *outBegIdx,
                               int          *outNBElement,
                               double        outReal[] );

TA_RetCode TA_LINEARREG_INTERCEPT( int    startIdx,
                                   int    endIdx,
                                   const double inReal[],
                                   int           optInTimePeriod, /* From 2 to 100000 */
                                   int          *outBegIdx,
                                   int          *outNBElement,
                                   double        outReal[] );

TA_RetCode TA_LINEARREG_SLOPE( int    startIdx,
                               int    endIdx,
                               const double inReal[],
                               int           optInTimePeriod, /* From 2 to 100000 */
                               int          *outBegIdx,
                               int          *outNBElement,
                               double        outReal[] );

TA_RetCode TA_LN( int    startIdx,
                  int    endIdx,
                  const double inReal[],
                  int          *outBegIdx,
                  int          *outNBElement,
                  double        outReal[] );

TA_RetCode TA_LOG10( int    startIdx,
                     int    endIdx,
                     const double inReal[],
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outReal[] );

TA_RetCode TA_MA( int    startIdx,
                  int    endIdx,
                  const double inReal[],
                  int           optInTimePeriod, /* From 1 to 100000 */
                  TA_MAType     optInMAType,
                  int          *outBegIdx,
                  int          *outNBElement,
                  double        outReal[] );

TA_RetCode TA_MACD( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInFastPeriod, /* From 2 to 100000 */
                    int           optInSlowPeriod, /* From 2 to 100000 */
                    int           optInSignalPeriod, /* From 1 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outMACD[],
                    double        outMACDSignal[],
                    double        outMACDHist[] );

TA_RetCode TA_MACDEXT( int    startIdx,
                       int    endIdx,
                       const double inReal[],
                       int           optInFastPeriod, /* From 2 to 100000 */
                       TA_MAType     optInFastMAType,
                       int           optInSlowPeriod, /* From 2 to 100000 */
                       TA_MAType     optInSlowMAType,
                       int           optInSignalPeriod, /* From 1 to 100000 */
                       TA_MAType     optInSignalMAType,
                       int          *outBegIdx,
                       int          *outNBElement,
                       double        outMACD[],
                       double        outMACDSignal[],
                       double        outMACDHist[] );

TA_RetCode TA_MACDFIX( int    startIdx,
                       int    endIdx,
                       const double inReal[],
                       int           optInSignalPeriod, /* From 1 to 100000 */
                       int          *outBegIdx,
                       int          *outNBElement,
                       double        outMACD[],
                       double        outMACDSignal[],
                       double        outMACDHist[] );

TA_RetCode TA_MAMA( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    double        optInFastLimit, /* From 0.01 to 0.99 */
                    double        optInSlowLimit, /* From 0.01 to 0.99 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outMAMA[],
                    double        outFAMA[] );

TA_RetCode TA_MAVP( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    const double inPeriods[],
                    int           optInMinPeriod, /* From 2 to 100000 */
                    int           optInMaxPeriod, /* From 2 to 100000 */
                    TA_MAType     optInMAType,
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_MAX( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_MAXINDEX( int    startIdx,
                        int    endIdx,
                        const double inReal[],
                        int           optInTimePeriod, /* From 2 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        int           outInteger[] );

TA_RetCode TA_MEDPRICE( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_MFI( int    startIdx,
                   int    endIdx,
                   const double inHigh[],
                   const double inLow[],
                   const double inClose[],
                   const double inVolume[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_MIDPOINT( int    startIdx,
                        int    endIdx,
                        const double inReal[],
                        int           optInTimePeriod, /* From 2 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_MIDPRICE( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        int           optInTimePeriod, /* From 2 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_MIN( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_MININDEX( int    startIdx,
                        int    endIdx,
                        const double inReal[],
                        int           optInTimePeriod, /* From 2 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        int           outInteger[] );

TA_RetCode TA_MINMAX( int    startIdx,
                      int    endIdx,
                      const double inReal[],
                      int           optInTimePeriod, /* From 2 to 100000 */
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outMin[],
                      double        outMax[] );

TA_RetCode TA_MINMAXINDEX( int    startIdx,
                           int    endIdx,
                           const double inReal[],
                           int           optInTimePeriod, /* From 2 to 100000 */
                           int          *outBegIdx,
                           int          *outNBElement,
                           int           outMinIdx[],
                           int           outMaxIdx[] );

TA_RetCode TA_MINUS_DI( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        const double inClose[],
                        int           optInTimePeriod, /* From 1 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_MINUS_DM( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        int           optInTimePeriod, /* From 1 to 100000 */
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_MOM( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 1 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_MULT( int    startIdx,
                    int    endIdx,
                    const double inReal0[],
                    const double inReal1[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_NATR( int    startIdx,
                    int    endIdx,
                    const double inHigh[],
                    const double inLow[],
                    const double inClose[],
                    int           optInTimePeriod, /* From 1 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_OBV( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   const double inVolume[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_PLUS_DI( int    startIdx,
                       int    endIdx,
                       const double inHigh[],
                       const double inLow[],
                       const double inClose[],
                       int           optInTimePeriod, /* From 1 to 100000 */
                       int          *outBegIdx,
                       int          *outNBElement,
                       double        outReal[] );

TA_RetCode TA_PLUS_DM( int    startIdx,
                       int    endIdx,
                       const double inHigh[],
                       const double inLow[],
                       int           optInTimePeriod, /* From 1 to 100000 */
                       int          *outBegIdx,
                       int          *outNBElement,
                       double        outReal[] );

TA_RetCode TA_PPO( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInFastPeriod, /* From 2 to 100000 */
                   int           optInSlowPeriod, /* From 2 to 100000 */
                   TA_MAType     optInMAType,
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_ROC( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 1 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_ROCP( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInTimePeriod, /* From 1 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_ROCR( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInTimePeriod, /* From 1 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_ROCR100( int    startIdx,
                       int    endIdx,
                       const double inReal[],
                       int           optInTimePeriod, /* From 1 to 100000 */
                       int          *outBegIdx,
                       int          *outNBElement,
                       double        outReal[] );

TA_RetCode TA_RSI( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_SAR( int    startIdx,
                   int    endIdx,
                   const double inHigh[],
                   const double inLow[],
                   double        optInAcceleration, /* From 0 to TA_REAL_MAX */
                   double        optInMaximum, /* From 0 to TA_REAL_MAX */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_SAREXT( int    startIdx,
                      int    endIdx,
                      const double inHigh[],
                      const double inLow[],
                      double        optInStartValue, /* From TA_REAL_MIN to TA_REAL_MAX */
                      double        optInOffsetOnReverse, /* From 0 to TA_REAL_MAX */
                      double        optInAccelerationInitLong, /* From 0 to TA_REAL_MAX */
                      double        optInAccelerationLong, /* From 0 to TA_REAL_MAX */
                      double        optInAccelerationMaxLong, /* From 0 to TA_REAL_MAX */
                      double        optInAccelerationInitShort, /* From 0 to TA_REAL_MAX */
                      double        optInAccelerationShort, /* From 0 to TA_REAL_MAX */
                      double        optInAccelerationMaxShort, /* From 0 to TA_REAL_MAX */
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outReal[] );

TA_RetCode TA_SIN( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_SINH( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_SMA( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_SQRT( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_STDDEV( int    startIdx,
                      int    endIdx,
                      const double inReal[],
                      int           optInTimePeriod, /* From 2 to 100000 */
                      double        optInNbDev, /* From TA_REAL_MIN to TA_REAL_MAX */
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outReal[] );

TA_RetCode TA_STOCH( int    startIdx,
                     int    endIdx,
                     const double inHigh[],
                     const double inLow[],
                     const double inClose[],
                     int           optInFastK_Period, /* From 1 to 100000 */
                     int           optInSlowK_Period, /* From 1 to 100000 */
                     TA_MAType     optInSlowK_MAType,
                     int           optInSlowD_Period, /* From 1 to 100000 */
                     TA_MAType     optInSlowD_MAType,
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outSlowK[],
                     double        outSlowD[] );

TA_RetCode TA_STOCHF( int    startIdx,
                      int    endIdx,
                      const double inHigh[],
                      const double inLow[],
                      const double inClose[],
                      int           optInFastK_Period, /* From 1 to 100000 */
                      int           optInFastD_Period, /* From 1 to 100000 */
                      TA_MAType     optInFastD_MAType,
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outFastK[],
                      double        outFastD[] );

TA_RetCode TA_STOCHRSI( int    startIdx,
                        int    endIdx,
                        const double inReal[],
                        int           optInTimePeriod, /* From 2 to 100000 */
                        int           optInFastK_Period, /* From 1 to 100000 */
                        int           optInFastD_Period, /* From 1 to 100000 */
                        TA_MAType     optInFastD_MAType,
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outFastK[],
                        double        outFastD[] );

TA_RetCode TA_SUB( int    startIdx,
                   int    endIdx,
                   const double inReal0[],
                   const double inReal1[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_SUM( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_T3( int    startIdx,
                  int    endIdx,
                  const double inReal[],
                  int           optInTimePeriod, /* From 2 to 100000 */
                  double        optInVFactor, /* From 0 to 1 */
                  int          *outBegIdx,
                  int          *outNBElement,
                  double        outReal[] );

TA_RetCode TA_TAN( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_TANH( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_TEMA( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInTimePeriod, /* From 2 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_TRANGE( int    startIdx,
                      int    endIdx,
                      const double inHigh[],
                      const double inLow[],
                      const double inClose[],
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outReal[] );

TA_RetCode TA_TRIMA( int    startIdx,
                     int    endIdx,
                     const double inReal[],
                     int           optInTimePeriod, /* From 2 to 100000 */
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outReal[] );

TA_RetCode TA_TRIX( int    startIdx,
                    int    endIdx,
                    const double inReal[],
                    int           optInTimePeriod, /* From 1 to 100000 */
                    int          *outBegIdx,
                    int          *outNBElement,
                    double        outReal[] );

TA_RetCode TA_TSF( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_TYPPRICE( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        const double inClose[],
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_ULTOSC( int    startIdx,
                      int    endIdx,
                      const double inHigh[],
                      const double inLow[],
                      const double inClose[],
                      int           optInTimePeriod1, /* From 1 to 100000 */
                      int           optInTimePeriod2, /* From 1 to 100000 */
                      int           optInTimePeriod3, /* From 1 to 100000 */
                      int          *outBegIdx,
                      int          *outNBElement,
                      double        outReal[] );

TA_RetCode TA_VAR( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 1 to 100000 */
                   double        optInNbDev, /* From TA_REAL_MIN to TA_REAL_MAX */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_WCLPRICE( int    startIdx,
                        int    endIdx,
                        const double inHigh[],
                        const double inLow[],
                        const double inClose[],
                        int          *outBegIdx,
                        int          *outNBElement,
                        double        outReal[] );

TA_RetCode TA_WILLR( int    startIdx,
                     int    endIdx,
                     const double inHigh[],
                     const double inLow[],
                     const double inClose[],
                     int           optInTimePeriod, /* From 2 to 100000 */
                     int          *outBegIdx,
                     int          *outNBElement,
                     double        outReal[] );

TA_RetCode TA_WMA( int    startIdx,
                   int    endIdx,
                   const double inReal[],
                   int           optInTimePeriod, /* From 2 to 100000 */
                   int          *outBegIdx,
                   int          *outNBElement,
                   double        outReal[] );

TA_RetCode TA_SetUnstablePeriod( TA_FuncUnstId id,
                                 unsigned int  unstablePeriod );

TA_RetCode TA_SetCompatibility( TA_Compatibility value );
TA_RetCode TA_SetCandleSettings( TA_CandleSettingType settingType, 
                                 TA_RangeType rangeType, 
                                 int avgPeriod, 
                                 double factor );

TA_RetCode TA_RestoreCandleDefaultSettings( TA_CandleSettingType settingType );

```

Constants
```
!version info
        function TA_GetVersionString() result(w)
            use iso_c_binding,only:c_int
            character(len=:),allocatable::w
            integer(kind=c_int)::tmp_len
            w=cptr_to_fstring(TA_GetVersionString_(tmp_len),tmp_len)
        end function TA_GetVersionString
        function TA_GetVersionMajor() result(w)
            use iso_c_binding,only:c_int
            character(len=:),allocatable::w
            integer(kind=c_int)::tmp_len
            w=cptr_to_fstring(TA_GetVersionMajor_(tmp_len),tmp_len)
        end function TA_GetVersionMajor
        function TA_GetVersionMinor() result(w)
            use iso_c_binding,only:c_int
            character(len=:),allocatable::w
            integer(kind=c_int)::tmp_len
            w=cptr_to_fstring(TA_GetVersionMinor_(tmp_len),tmp_len)
        end function TA_GetVersionMinor
        function TA_GetVersionBuild() result(w)
            use iso_c_binding,only:c_int
            character(len=:),allocatable::w
            integer(kind=c_int)::tmp_len
            w=cptr_to_fstring(TA_GetVersionBuild_(tmp_len),tmp_len)
        end function TA_GetVersionBuild
        function TA_GetVersionDate() result(w)
            use iso_c_binding,only:c_int
            character(len=:),allocatable::w
            integer(kind=c_int)::tmp_len
            w=cptr_to_fstring(TA_GetVersionDate_(tmp_len),tmp_len)
        end function TA_GetVersionDate
        function TA_GetVersionTime() result(w)
            use iso_c_binding,only:c_int
            character(len=:),allocatable::w
            integer(kind=c_int)::tmp_len
            w=cptr_to_fstring(TA_GetVersionTime_(tmp_len),tmp_len)
        end function TA_GetVersionTime
        
     !TA_MAType constants

        integer(kind=c_int) function TA_MAType_SMA() result(w) bind(C,name="TA_MAType_SMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_SMA
        integer(kind=c_int) function TA_MAType_EMA() result(w) bind(C,name="TA_MAType_EMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_EMA
        integer(kind=c_int) function TA_MAType_WMA() result(w) bind(C,name="TA_MAType_WMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_WMA
        integer(kind=c_int) function TA_MAType_DEMA() result(w) bind(C,name="TA_MAType_DEMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_DEMA
        integer(kind=c_int) function TA_MAType_TEMA() result(w) bind(C,name="TA_MAType_TEMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_TEMA
        integer(kind=c_int) function TA_MAType_TRIMA() result(w) bind(C,name="TA_MAType_TRIMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_TRIMA
        integer(kind=c_int) function TA_MAType_KAMA() result(w) bind(C,name="TA_MAType_KAMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_KAMA
        integer(kind=c_int) function TA_MAType_MAMA() result(w) bind(C,name="TA_MAType_MAMA_")
            use iso_c_binding,only:c_int
        end function TA_MAType_MAMA
        integer(kind=c_int) function TA_MAType_T3() result(w) bind(C,name="TA_MAType_T3_")
            use iso_c_binding,only:c_int
        end function TA_MAType_T3

    !TA_SetUnstablePeriod and TA_GetUnstablePeriod function id constants

        integer(kind=c_int) function TA_FUNC_UNST_ADX() result(w) bind(C,name="TA_FUNC_UNST_ADX_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_ADX
        integer(kind=c_int) function TA_FUNC_UNST_ADXR() result(w) bind(C,name="TA_FUNC_UNST_ADXR_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_ADXR
        integer(kind=c_int) function TA_FUNC_UNST_ATR() result(w) bind(C,name="TA_FUNC_UNST_ATR_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_ATR
        integer(kind=c_int) function TA_FUNC_UNST_CMO() result(w) bind(C,name="TA_FUNC_UNST_CMO_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_CMO
        integer(kind=c_int) function TA_FUNC_UNST_DX() result(w) bind(C,name="TA_FUNC_UNST_DX_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_DX
        integer(kind=c_int) function TA_FUNC_UNST_EMA() result(w) bind(C,name="TA_FUNC_UNST_EMA_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_EMA
        integer(kind=c_int) function TA_FUNC_UNST_HT_DCPERIOD() result(w) bind(C,name="TA_FUNC_UNST_HT_DCPERIOD_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_HT_DCPERIOD
        integer(kind=c_int) function TA_FUNC_UNST_HT_DCPHASE() result(w) bind(C,name="TA_FUNC_UNST_HT_DCPHASE_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_HT_DCPHASE
        integer(kind=c_int) function TA_FUNC_UNST_HT_PHASOR() result(w) bind(C,name="TA_FUNC_UNST_HT_PHASOR_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_HT_PHASOR
        integer(kind=c_int) function TA_FUNC_UNST_HT_SINE() result(w) bind(C,name="TA_FUNC_UNST_HT_SINE_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_HT_SINE
        integer(kind=c_int) function TA_FUNC_UNST_HT_TRENDLINE() result(w) bind(C,name="TA_FUNC_UNST_HT_TRENDLINE_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_HT_TRENDLINE
        integer(kind=c_int) function TA_FUNC_UNST_HT_TRENDMODE() result(w) bind(C,name="TA_FUNC_UNST_HT_TRENDMODE_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_HT_TRENDMODE
        integer(kind=c_int) function TA_FUNC_UNST_KAMA() result(w) bind(C,name="TA_FUNC_UNST_KAMA_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_KAMA
        integer(kind=c_int) function TA_FUNC_UNST_MAMA() result(w) bind(C,name="TA_FUNC_UNST_MAMA_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_MAMA
        integer(kind=c_int) function TA_FUNC_UNST_MFI() result(w) bind(C,name="TA_FUNC_UNST_MFI_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_MFI
        integer(kind=c_int) function TA_FUNC_UNST_MINUS_DI() result(w) bind(C,name="TA_FUNC_UNST_MINUS_DI_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_MINUS_DI
        integer(kind=c_int) function TA_FUNC_UNST_MINUS_DM() result(w) bind(C,name="TA_FUNC_UNST_MINUS_DM_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_MINUS_DM
        integer(kind=c_int) function TA_FUNC_UNST_NATR() result(w) bind(C,name="TA_FUNC_UNST_NATR_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_NATR
        integer(kind=c_int) function TA_FUNC_UNST_PLUS_DI() result(w) bind(C,name="TA_FUNC_UNST_PLUS_DI_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_PLUS_DI
        integer(kind=c_int) function TA_FUNC_UNST_PLUS_DM() result(w) bind(C,name="TA_FUNC_UNST_PLUS_DM_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_PLUS_DM
        integer(kind=c_int) function TA_FUNC_UNST_RSI() result(w) bind(C,name="TA_FUNC_UNST_RSI_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_RSI
        integer(kind=c_int) function TA_FUNC_UNST_STOCHRSI() result(w) bind(C,name="TA_FUNC_UNST_STOCHRSI_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_STOCHRSI
        integer(kind=c_int) function TA_FUNC_UNST_T3() result(w) bind(C,name="TA_FUNC_UNST_T3_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_T3
        integer(kind=c_int) function TA_FUNC_UNST_ALL() result(w) bind(C,name="TA_FUNC_UNST_ALL_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_ALL
        integer(kind=c_int) function TA_FUNC_UNST_NONE() result(w) bind(C,name="TA_FUNC_UNST_NONE_")
            use iso_c_binding,only:c_int
        end function TA_FUNC_UNST_NONE

    !TA_SetCompatibility and TA_GetCompatibility constant values
        integer(kind=c_int) function TA_COMPATIBILITY_DEFAULT() result(w) bind(C,name="TA_COMPATIBILITY_DEFAULT_")
            use iso_c_binding,only:c_int
        end function TA_COMPATIBILITY_DEFAULT
        integer(kind=c_int) function TA_COMPATIBILITY_METASTOCK() result(w) bind(C,name="TA_COMPATIBILITY_METASTOCK_")
            use iso_c_binding,only:c_int
        end function TA_COMPATIBILITY_METASTOCK


    !TA_SetCandleSettings and TA_RestoreCandleDefaultSettings setting/rangetype constants
        
        !valid settingType values
        integer(kind=c_int) function TA_BodyLong() result(w) bind(C,name="TA_BodyLong_")
            use iso_c_binding,only:c_int
        end function TA_BodyLong
        integer(kind=c_int) function TA_BodyVeryLong() result(w) bind(C,name="TA_BodyVeryLong_")
            use iso_c_binding,only:c_int
        end function TA_BodyVeryLong
        integer(kind=c_int) function TA_BodyShort() result(w) bind(C,name="TA_BodyShort_")
            use iso_c_binding,only:c_int
        end function TA_BodyShort
        integer(kind=c_int) function TA_BodyDoji() result(w) bind(C,name="TA_BodyDoji_")
            use iso_c_binding,only:c_int
        end function TA_BodyDoji
        integer(kind=c_int) function TA_ShadowLong() result(w) bind(C,name="TA_ShadowLong_")
            use iso_c_binding,only:c_int
        end function TA_ShadowLong
        integer(kind=c_int) function TA_ShadowVeryLong() result(w) bind(C,name="TA_ShadowVeryLong_")
            use iso_c_binding,only:c_int
        end function TA_ShadowVeryLong
        integer(kind=c_int) function TA_ShadowShort() result(w) bind(C,name="TA_ShadowShort_")
            use iso_c_binding,only:c_int
        end function TA_ShadowShort
        integer(kind=c_int) function TA_ShadowVeryShort() result(w) bind(C,name="TA_ShadowVeryShort_")
            use iso_c_binding,only:c_int
        end function TA_ShadowVeryShort
        integer(kind=c_int) function TA_Near() result(w) bind(C,name="TA_Near_")
            use iso_c_binding,only:c_int
        end function TA_Near
        integer(kind=c_int) function TA_Far() result(w) bind(C,name="TA_Far_")
            use iso_c_binding,only:c_int
        end function TA_Far
        integer(kind=c_int) function TA_Equal() result(w) bind(C,name="TA_Equal_")
            use iso_c_binding,only:c_int
        end function TA_Equal
        integer(kind=c_int) function TA_AllCandleSettings() result(w) bind(C,name="TA_AllCandleSettings_")
            use iso_c_binding,only:c_int
        end function TA_AllCandleSettings
        
        !valid rangeType values
        integer(kind=c_int) function TA_RangeType_RealBody() result(w) bind(C,name="TA_RangeType_RealBody_")
            use iso_c_binding,only:c_int
        end function TA_RangeType_RealBody
        integer(kind=c_int) function TA_RangeType_HighLow() result(w) bind(C,name="TA_RangeType_HighLow_")
            use iso_c_binding,only:c_int
        end function TA_RangeType_HighLow
        integer(kind=c_int) function TA_RangeType_Shadows() result(w) bind(C,name="TA_RangeType_Shadows_")
            use iso_c_binding,only:c_int
        end function TA_RangeType_Shadows


    !constants

        integer(kind=c_int) function TA_INTEGER_DEFAULT() result(w) bind(C,name="int_def")
            use iso_c_binding,only:c_int
        end function TA_INTEGER_DEFAULT
        real(kind=c_double) function TA_REAL_DEFAULT() result(w) bind(C,name="real_def")
            use iso_c_binding,only:c_double
        end function TA_REAL_DEFAULT

    !retCodes - constants

        integer(kind=c_int) function TA_SUCCESS() result(w) bind(C,name="TA_SUCCESS_")
            use iso_c_binding,only:c_int
        end function TA_SUCCESS
        integer(kind=c_int) function TA_LIB_NOT_INITIALIZE() result(w) bind(C,name="TA_LIB_NOT_INITIALIZE")
            use iso_c_binding,only:c_int
        end function TA_LIB_NOT_INITIALIZE
        integer(kind=c_int) function TA_BAD_PARAM() result(w) bind(C,name="TA_BAD_PARAM")
            use iso_c_binding,only:c_int
        end function TA_BAD_PARAM
        integer(kind=c_int) function TA_ALLOC_ERR() result(w) bind(C,name="TA_ALLOC_ERR")
            use iso_c_binding,only:c_int
        end function TA_ALLOC_ERR
        integer(kind=c_int) function TA_GROUP_NOT_FOUND() result(w) bind(C,name="TA_GROUP_NOT_FOUND")
            use iso_c_binding,only:c_int
        end function TA_GROUP_NOT_FOUND
        integer(kind=c_int) function TA_FUNC_NOT_FOUND() result(w) bind(C,name="TA_FUNC_NOT_FOUND")
            use iso_c_binding,only:c_int
        end function TA_FUNC_NOT_FOUND
        integer(kind=c_int) function TA_INVALID_HANDLE() result(w) bind(C,name="TA_INVALID_HANDLE")
            use iso_c_binding,only:c_int
        end function TA_INVALID_HANDLE
        integer(kind=c_int) function TA_INVALID_PARAM_HOLDER() result(w) bind(C,name="TA_INVALID_PARAM_HOLDER")
            use iso_c_binding,only:c_int
        end function TA_INVALID_PARAM_HOLDER
        integer(kind=c_int) function TA_INVALID_PARAM_HOLDER_TYPE() result(w) bind(C,name="TA_INVALID_PARAM_HOLDER_TYPE")
            use iso_c_binding,only:c_int
        end function TA_INVALID_PARAM_HOLDER_TYPE
        integer(kind=c_int) function TA_INVALID_PARAM_FUNCTION() result(w) bind(C,name="TA_INVALID_PARAM_FUNCTION")
            use iso_c_binding,only:c_int
        end function TA_INVALID_PARAM_FUNCTION
        integer(kind=c_int) function TA_INPUT_NOT_ALL_INITIALIZE() result(w) bind(C,name="TA_INPUT_NOT_ALL_INITIALIZE")
            use iso_c_binding,only:c_int
        end function TA_INPUT_NOT_ALL_INITIALIZE
        integer(kind=c_int) function TA_OUTPUT_NOT_ALL_INITIALIZE() result(w) bind(C,name="TA_OUTPUT_NOT_ALL_INITIALIZE")
            use iso_c_binding,only:c_int
        end function TA_OUTPUT_NOT_ALL_INITIALIZE
        integer(kind=c_int) function TA_OUT_OF_RANGE_START_INDEX() result(w) bind(C,name="TA_OUT_OF_RANGE_START_INDEX")
            use iso_c_binding,only:c_int
        end function TA_OUT_OF_RANGE_START_INDEX
        integer(kind=c_int) function TA_OUT_OF_RANGE_END_INDEX() result(w) bind(C,name="TA_OUT_OF_RANGE_END_INDEX")
            use iso_c_binding,only:c_int
        end function TA_OUT_OF_RANGE_END_INDEX
        integer(kind=c_int) function TA_INVALID_LIST_TYPE() result(w) bind(C,name="TA_INVALID_LIST_TYPE")
            use iso_c_binding,only:c_int
        end function TA_INVALID_LIST_TYPE
        integer(kind=c_int) function TA_BAD_OBJECT() result(w) bind(C,name="TA_BAD_OBJECT")
            use iso_c_binding,only:c_int
        end function TA_BAD_OBJECT
        integer(kind=c_int) function TA_NOT_SUPPORTED() result(w) bind(C,name="TA_NOT_SUPPORTED")
            use iso_c_binding,only:c_int
        end function TA_NOT_SUPPORTED
        integer(kind=c_int) function TA_INTERNAL_ERROR() result(w) bind(C,name="TA_INTERNAL_ERROR")
            use iso_c_binding,only:c_int
        end function TA_INTERNAL_ERROR
        integer(kind=c_int) function TA_UNKNOWN_ERR() result(w) bind(C,name="TA_UNKNOWN_ERR")
            use iso_c_binding,only:c_int
        end function TA_UNKNOWN_ERR
```

Compiling
```
gfortran-8 ta.c talib.f08 yourprogram.f08 -lta_lib -o test.o &&./test.o

or 

gcc -c ta.c && gfortran-8 -c talib.f08 yourprogram.f08 &&gfortran-8 talib.o ta.o yourprogram.o -lta_lib -o out.a && ./out.a

```
