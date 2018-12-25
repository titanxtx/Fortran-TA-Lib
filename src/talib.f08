module talib
    IMPLICIT NONE
    
    interface
    !Initialize and Shutdown
        integer(kind=c_int) function TA_Initialize() result(retCode) bind(C,name="TA_Initialize")
            use iso_c_binding,only:c_int
        end function TA_Initialize
        integer(kind=c_int) function TA_Shutdown() result(retCode) bind(C,name="TA_Shutdown")
            use iso_c_binding,only:c_int
        end function TA_Shutdown

    !Helper functions
        integer(kind=c_int) function TA_SetUnstablePeriod(function_id,unstablePeriod) result(retCode)&
        bind(C,name="TA_SetUnstablePeriod")
            use iso_c_binding,only:c_int
            integer(kind=c_int),intent(in),value::function_id,unstablePeriod
        end function TA_SetUnstablePeriod
        integer(kind=c_int) function TA_GetUnstablePeriod(function_id) result(period) bind(C,name="TA_GetUnstablePeriod")
            use iso_c_binding,only:c_int
            integer(kind=c_int),intent(in),value::function_id
        end function TA_GetUnstablePeriod
        integer(kind=c_int) function TA_SetCompatibility(function_id) result(retCode) bind(C,name="TA_SetCompatibility")
            use iso_c_binding,only:c_int
            integer(kind=c_int),intent(in),value::function_id
        end function TA_SetCompatibility
        integer(kind=c_int) function TA_GetCompatibility() result(compatibility) bind(C,name="TA_GetCompatibility")
            use iso_c_binding,only:c_int
        end function TA_GetCompatibility
        integer(kind=c_int) function TA_SetCandleSettings(settingType,rangeType,avgPeriod,factor)& 
        result(retCode) bind(C,name="TA_SetCandleSettings")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::settingType,rangeType,avgPeriod
            real(kind=c_double),intent(in),value::factor
        end function TA_SetCandleSettings
        integer(kind=c_int) function TA_RestoreCandleDefaultSettings(settingType)& 
        result(retCode) bind(C,name="TA_RestoreCandleDefaultSettings")
            use iso_c_binding,only:c_int
            integer(kind=c_int),intent(in),value::settingType
        end function TA_RestoreCandleDefaultSettings

    !version info
        function TA_GetVersionString_(str_len) result(x) bind(C,name="TA_GetVersionString_")
            use iso_c_binding,only:c_ptr,c_int,c_char
            type(c_ptr)::x
            integer(kind=c_int),intent(out)::str_len
        end function TA_GetVersionString_
        function TA_GetVersionMajor_(str_len) result(x) bind(C,name="TA_GetVersionMajor_")
            use iso_c_binding,only:c_ptr,c_int,c_char
            type(c_ptr)::x
            integer(kind=c_int),intent(out)::str_len
        end function TA_GetVersionMajor_
        function TA_GetVersionMinor_(str_len) result(x) bind(C,name="TA_GetVersionMinor_")
            use iso_c_binding,only:c_ptr,c_int,c_char
            type(c_ptr)::x
            integer(kind=c_int),intent(out)::str_len
        end function TA_GetVersionMinor_
        function TA_GetVersionBuild_(str_len) result(x) bind(C,name="TA_GetVersionBuild_")
            use iso_c_binding,only:c_ptr,c_int,c_char
            type(c_ptr)::x
            integer(kind=c_int),intent(out)::str_len
        end function TA_GetVersionBuild_
        function TA_GetVersionDate_(str_len) result(x) bind(C,name="TA_GetVersionDate_")
            use iso_c_binding,only:c_ptr,c_int,c_char
            type(c_ptr)::x
            integer(kind=c_int),intent(out)::str_len
        end function TA_GetVersionDate_
        function TA_GetVersionTime_(str_len) result(x) bind(C,name="TA_GetVersionTime_")
            use iso_c_binding,only:c_ptr,c_int,c_char
            type(c_ptr)::x
            integer(kind=c_int),intent(out)::str_len
        end function TA_GetVersionTime_

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
        
    !Group: Math Operators

        integer(kind=c_int) function TA_ADD(startIdx,endIdx,inReal0,inReal1,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ADD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal0(*),inReal1(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ADD
        integer(kind=c_int) function TA_DIV(startIdx,endIdx,inReal0,inReal1,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_DIV")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal0(*),inReal1(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_DIV
        integer(kind=c_int) function TA_MAX(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MAX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MAX
        integer(kind=c_int) function TA_MAXINDEX(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MAXINDEX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MAXINDEX
        integer(kind=c_int) function TA_MIN(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MIN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MIN
        integer(kind=c_int) function TA_MININDEX(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MININDEX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MININDEX
        integer(kind=c_int) function TA_MINMAX(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MINMAX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MINMAX
        integer(kind=c_int) function TA_MINMAXINDEX(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MINMAXINDEX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MINMAXINDEX
        integer(kind=c_int) function TA_MULT(startIdx,endIdx,inReal0,inReal1,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MULT")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal0(*),inReal1(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MULT
        integer(kind=c_int) function TA_SUB(startIdx,endIdx,inReal0,inReal1,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SUB")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal0(*),inReal1(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SUB
        integer(kind=c_int) function TA_SUM(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SUM")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SUM

    !Group: Math Transform

        integer(kind=c_int) function TA_ACOS(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ACOS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ACOS
        integer(kind=c_int) function TA_ASIN(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ASIN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ASIN
        integer(kind=c_int) function TA_ATAN(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ATAN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ATAN
        integer(kind=c_int) function TA_CEIL(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_CEIL")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_CEIL
        integer(kind=c_int) function TA_COS(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_COS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_COS
        integer(kind=c_int) function TA_COSH(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_COSH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_COSH
        integer(kind=c_int) function TA_EXP(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_EXP")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_EXP
        integer(kind=c_int) function TA_FLOOR(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_FLOOR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_FLOOR
        integer(kind=c_int) function TA_LN(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_LN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_LN
        integer(kind=c_int) function TA_LOG10(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_LOG10")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_LOG10
        integer(kind=c_int) function TA_SIN(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SIN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SIN
        integer(kind=c_int) function TA_SINH(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SINH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SINH
        integer(kind=c_int) function TA_SQRT(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SQRT")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SQRT
        integer(kind=c_int) function TA_TAN(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_TAN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_TAN
        integer(kind=c_int) function TA_TANH(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_TANH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_TANH
        
    !Group: Overlap Studies

        integer(kind=c_int) function TA_BBANDS(startIdx,endIdx,inReal,optInTimePeriod,optInNbDevUp,optInNbDevDn,optInMAType,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_BBANDS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod,optInMAType
            real(kind=c_double),intent(in),value::optInNbDevUp,optInNbDevDn
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_BBANDS
        integer(kind=c_int) function TA_DEMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_DEMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_DEMA
        integer(kind=c_int) function TA_EMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_EMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_EMA
        integer(kind=c_int) function TA_HT_TRENDLINE(startIdx,endIdx,inReal,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_HT_TRENDLINE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_HT_TRENDLINE

        integer(kind=c_int) function TA_KAMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_KAMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_KAMA
        integer(kind=c_int) function TA_MA(startIdx,endIdx,inReal,optInTimePeriod,optInMAType,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod,optInMAType
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MA
        integer(kind=c_int) function TA_MAMA(startIdx,endIdx,inReal,optInFastLimit,optInSlowLimit,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MAMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInFastLimit,optInSlowLimit
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MAMA
        integer(kind=c_int) function TA_MAVP(startIdx,endIdx,inReal,inPeriods,optInMinPeriod,optInMaxPeriod,&
        optInMAType,outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_MAVP")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInMinPeriod,optInMaxPeriod,optInMAType
            real(kind=c_double),intent(in)::inReal(*),inPeriods(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MAVP
        integer(kind=c_int) function TA_MIDPOINT(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MIDPOINT")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MIDPOINT
        integer(kind=c_int) function TA_MIDPRICE(startIdx,endIdx,high,low,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_MIDPRICE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MIDPRICE

        integer(kind=c_int) function TA_SAR(startIdx,endIdx,high,low,optInAcceleration,optInMaximum,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInAcceleration,optInMaximum
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SAR
        integer(kind=c_int) function TA_SAREXT(startIdx,endIdx,high,low,optInStartValue,&
        optInOffsetOnReverse,optInAccelerationInitLong,optInAccelerationLong,&
        optInAccelerationMaxLong,optInAccelerationInitShort,optInAccelerationShort,&
        optInAccelerationMaxShort,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SAREXT")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInStartValue,optInOffsetOnReverse,optInAccelerationInitLong,&
            optInAccelerationLong,optInAccelerationMaxLong,optInAccelerationInitShort,&
            optInAccelerationShort,optInAccelerationMaxShort
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SAREXT

        integer(kind=c_int) function TA_WMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_WMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_WMA
        integer(kind=c_int) function TA_TRIMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_TRIMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_TRIMA
        integer(kind=c_int) function TA_TEMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_TEMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_TEMA
        integer(kind=c_int) function TA_T3(startIdx,endIdx,inReal,optInTimePeriod,optInVFactor,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_T3")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod,optInVFactor
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_T3
        integer(kind=c_int) function TA_SMA(startIdx,endIdx,inReal,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_SMA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_SMA

    !Group: Volatility Indicators

        integer(kind=c_int) function TA_ATR(startIdx,endIdx,high,low,close,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ATR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ATR
        integer(kind=c_int) function TA_NATR(startIdx,endIdx,high,low,close,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_NATR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_NATR
        integer(kind=c_int) function TA_TRANGE(startIdx,endIdx,high,low,close,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_TRANGE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_TRANGE

    !Group: Momentum Indicators

        integer(kind=c_int) function TA_ADX(startIdx,endIdx,high,low,close,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ADX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ADX
        integer(kind=c_int) function TA_ADXR(startIdx,endIdx,high,low,close,optInTimePeriod,outBegIdx,outNbElement,outReal)&
        result(retCode) bind(C,name="TA_ADXR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ADXR
        integer(kind=c_int) function TA_APO(startIdx,endIdx,inReal,optInFastPeriod,optInSlowPeriod,&
        optInMAType,outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_APO")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastPeriod,optInSlowPeriod,optInMAType
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_APO
        integer(kind=c_int) function TA_AROON(startIdx,endIdx,high,low,optInTimePeriod,&
        outBegIdx,outNbElement,outAroonDown,outAroonUp) result(retCode) bind(C,name="TA_AROON")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outAroonDown(*),outAroonUp(*)
        end function TA_AROON
        integer(kind=c_int) function TA_AROONOSC(startIdx,endIdx,high,low,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_AROONOSC")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_AROONOSC
        integer(kind=c_int) function TA_BOP(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_BOP")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_BOP

        integer(kind=c_int) function TA_CCI(startIdx,endIdx,high,low,close,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_CCI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_CCI
        integer(kind=c_int) function TA_CMO(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_CMO")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_CMO
        integer(kind=c_int) function TA_DX(startIdx,endIdx,high,low,close,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_DX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_DX
        integer(kind=c_int) function TA_MACD(startIdx,endIdx,inReal,optInFastPeriod,optInSlowPeriod,optInSignalPeriod,&
        outBegIdx,outNbElement,outMACD,outMACDSignal,outMACDHist) result(retCode) bind(C,name="TA_MACD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastPeriod,optInSlowPeriod,optInSignalPeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outMACD(*),outMACDSignal(*),outMACDHist(*)
        end function TA_MACD
        integer(kind=c_int) function TA_MACDEXT(startIdx,endIdx,inReal,optInFastPeriod,&
        optInFastMAType,optInSlowPeriod,optInSlowMAType,optInSignalPeriod,optInSignalMAType,&
        outBegIdx,outNbElement,outMACD,outMACDSignal,outMACDHist) result(retCode) bind(C,name="TA_MACDEXT")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastPeriod,&
            optInFastMAType,optInSlowPeriod,optInSlowMAType,optInSignalPeriod,optInSignalMAType
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outMACD(*),outMACDSignal(*),outMACDHist(*)
        end function TA_MACDEXT
        integer(kind=c_int) function TA_MACDFIX(startIdx,endIdx,inReal,optInSignalPeriod,&
        outBegIdx,outNbElement,outMACD,outMACDSignal,outMACDHist) result(retCode) bind(C,name="TA_MACDFIX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInSignalPeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outMACD(*),outMACDSignal(*),outMACDHist(*)
        end function TA_MACDFIX

        integer(kind=c_int) function TA_MFI(startIdx,endIdx,high,low,close,volume,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_MFI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*),volume(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MFI

        integer(kind=c_int) function TA_MINUS_DI(startIdx,endIdx,high,low,close,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_MINUS_DI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MINUS_DI

        integer(kind=c_int) function TA_MINUS_DM(startIdx,endIdx,high,low,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_MINUS_DM")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MINUS_DM

        integer(kind=c_int) function TA_MOM(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_MOM")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_MOM
        integer(kind=c_int) function TA_PLUS_DI(startIdx,endIdx,high,low,close,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_PLUS_DI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_PLUS_DI
        integer(kind=c_int) function TA_PLUS_DM(startIdx,endIdx,high,low,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_PLUS_DM")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_PLUS_DM
        integer(kind=c_int) function TA_PPO(startIdx,endIdx,inReal,optInFastPeriod,optInSlowPeriod,optInMAType,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_PPO")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastPeriod,optInSlowPeriod,optInMAType
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_PPO

        integer(kind=c_int) function TA_ROC(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_ROC")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ROC

        integer(kind=c_int) function TA_ROCP(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_ROCP")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ROCP

        integer(kind=c_int) function TA_ROCR(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_ROCR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ROCR

        integer(kind=c_int) function TA_ROCR100(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_ROCR100")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ROCR100

        integer(kind=c_int) function TA_RSI(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_RSI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_RSI



        integer(kind=c_int) function TA_STOCH(startIdx,endIdx,high,low,close,optInFastK_Period,optInSlowK_Period,&
        optInSlowK_MAType,optInSlowD_Period,optInSlowD_MAType,&
        outBegIdx,outNbElement,outSlowK,outSlowD) result(retCode) bind(C,name="TA_STOCH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInSlowK_MAType,&
            optInFastK_Period,optInSlowK_Period,optInSlowD_Period,optInSlowD_MAType
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outSlowK(*),outSlowD(*)
        end function TA_STOCH

        integer(kind=c_int) function TA_STOCHF(startIdx,endIdx,high,low,close,optInFastK_Period,&
        optInFastD_Period,optInFastD_MAType,&
        outBegIdx,outNbElement,outFastK,outFastD) result(retCode) bind(C,name="TA_STOCHF")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastK_Period,optInFastD_Period,optInFastD_MAType
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outFastK(*),outFastD(*)
        end function TA_STOCHF

        integer(kind=c_int) function TA_STOCHRSI(startIdx,endIdx,inReal,optInFastPeriod,optInSlowPeriod,optInMAType,&
        outBegIdx,outNbElement,outFastK,outFastD) result(retCode) bind(C,name="TA_STOCHRSI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastPeriod,optInSlowPeriod,optInMAType
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outFastK(*),outFastD(*)
        end function TA_STOCHRSI

        integer(kind=c_int) function TA_TRIX(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outFastK,outFastD) result(retCode) bind(C,name="TA_TRIX")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outFastK(*),outFastD(*)
        end function TA_TRIX

        integer(kind=c_int) function TA_ULTOSC(startIdx,endIdx,high,low,close,&
        optInTimePeriod1,optInTimePeriod2,optInTimePeriod3,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_ULTOSC")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod1,optInTimePeriod2,optInTimePeriod3
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ULTOSC

        integer(kind=c_int) function TA_WILLR(startIdx,endIdx,high,low,close,optInTimePeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_WILLR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_WILLR

    !Group: Cycle Indicators

        integer(kind=c_int) function TA_HT_DCPERIOD(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_HT_DCPERIOD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_HT_DCPERIOD
        integer(kind=c_int) function TA_HT_DCPHASE(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_HT_DCPHASE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_HT_DCPHASE
        integer(kind=c_int) function TA_HT_PHASOR(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outInPhase,outQuadrature) result(retCode) bind(C,name="TA_HT_PHASOR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outInPhase(*),outQuadrature(*)
        end function TA_HT_PHASOR
        integer(kind=c_int) function TA_HT_SINE(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outSine,outLeadSine) result(retCode) bind(C,name="TA_HT_SINE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outSine(*),outLeadSine(*)
        end function TA_HT_SINE
        integer(kind=c_int) function TA_HT_TRENDMODE(startIdx,endIdx,inReal,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_HT_TRENDMODE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_HT_TRENDMODE

    !Group: Volume Indicators

        integer(kind=c_int) function TA_AD(startIdx,endIdx,high,low,close,volume,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_AD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::high(*),low(*),close(*),volume(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_AD
        integer(kind=c_int) function TA_ADOSC(startIdx,endIdx,high,low,close,volume,optInFastPeriod,optInSlowPeriod,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_ADOSC")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInFastPeriod,optInSlowPeriod
            real(kind=c_double),intent(in)::high(*),low(*),close(*),volume(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_ADOSC
        integer(kind=c_int) function TA_OBV(startIdx,endIdx,inReal,volume,&
        outBegIdx,outNbElement,outReal) result(retCode) bind(C,name="TA_OBV")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::inReal(*),volume(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            real(kind=c_double),intent(out)::outReal(*)
        end function TA_OBV

    !Group: Pattern Recognition

        integer(kind=c_int) function TA_CDL2CROWS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL2CROWS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL2CROWS
        integer(kind=c_int) function TA_CDL3BLACKCROWS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL3BLACKCROWS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL3BLACKCROWS
        integer(kind=c_int) function TA_CDL3INSIDE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL3INSIDE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL3INSIDE
        integer(kind=c_int) function TA_CDL3LINESTRIKE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL3LINESTRIKE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL3LINESTRIKE
        integer(kind=c_int) function TA_CDL3OUTSIDE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL3OUTSIDE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL3OUTSIDE
        integer(kind=c_int) function TA_CDL3STARSINSOUTH(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL3STARSINSOUTH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL3STARSINSOUTH
        integer(kind=c_int) function TA_CDL3WHITESOLDIERS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDL3WHITESOLDIERS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDL3WHITESOLDIERS
        integer(kind=c_int) function TA_CDLABANDONEDBABY(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLABANDONEDBABY")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLABANDONEDBABY

        integer(kind=c_int) function TA_CDLADVANCEBLOCK(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLADVANCEBLOCK")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLADVANCEBLOCK
        integer(kind=c_int) function TA_CDLBELTHOLD(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLBELTHOLD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLBELTHOLD
        integer(kind=c_int) function TA_CDLBREAKAWAY(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLBREAKAWAY")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLBREAKAWAY
        integer(kind=c_int) function TA_CDLCLOSINGMARUBOZU(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLCLOSINGMARUBOZU")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLCLOSINGMARUBOZU
        integer(kind=c_int) function TA_CDLCONCEALBABYSWALL(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLCONCEALBABYSWALL")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLCONCEALBABYSWALL
        integer(kind=c_int) function TA_CDLCOUNTERATTACK(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLCOUNTERATTACK")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLCOUNTERATTACK
        integer(kind=c_int) function TA_CDLDARKCLOUDCOVER(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLDARKCLOUDCOVER")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLDARKCLOUDCOVER
        integer(kind=c_int) function TA_CDLDOJI(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLDOJI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLDOJI
        integer(kind=c_int) function TA_CDLDOJISTAR(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLDOJISTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLDOJISTAR

        integer(kind=c_int) function TA_CDLDRAGONFLYDOJI(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLDRAGONFLYDOJI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLDRAGONFLYDOJI
        integer(kind=c_int) function TA_CDLENGULFING(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLENGULFING")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLENGULFING
        integer(kind=c_int) function TA_CDLEVENINGDOJISTAR(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLEVENINGDOJISTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLEVENINGDOJISTAR
        integer(kind=c_int) function TA_CDLEVENINGSTAR(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLEVENINGSTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLEVENINGSTAR
        integer(kind=c_int) function TA_CDLGAPSIDESIDEWHITE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLGAPSIDESIDEWHITE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLGAPSIDESIDEWHITE

        integer(kind=c_int) function TA_CDLGRAVESTONEDOJI(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLGRAVESTONEDOJI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLGRAVESTONEDOJI
        integer(kind=c_int) function TA_CDLHAMMER(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHAMMER")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHAMMER
        integer(kind=c_int) function TA_CDLHANGINGMAN(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHANGINGMAN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHANGINGMAN
        integer(kind=c_int) function TA_CDLHARAMI(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHARAMI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHARAMI
        integer(kind=c_int) function TA_CDLHARAMICROSS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHARAMICROSS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHARAMICROSS

        integer(kind=c_int) function TA_CDLHIGHWAVE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHIGHWAVE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHIGHWAVE
        integer(kind=c_int) function TA_CDLHIKKAKE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHIKKAKE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHIKKAKE
        integer(kind=c_int) function TA_CDLHIKKAKEMOD(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHIKKAKEMOD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHIKKAKEMOD
        integer(kind=c_int) function TA_CDLHOMINGPIGEON(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLHOMINGPIGEON")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLHOMINGPIGEON
        integer(kind=c_int) function TA_CDLIDENTICAL3CROWS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLIDENTICAL3CROWS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLIDENTICAL3CROWS
        integer(kind=c_int) function TA_CDLINNECK(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLINNECK")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLINNECK

        integer(kind=c_int) function TA_CDLINVERTEDHAMMER(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLINVERTEDHAMMER")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLINVERTEDHAMMER
        integer(kind=c_int) function TA_CDLKICKING(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLKICKING")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLKICKING
        integer(kind=c_int) function TA_CDLKICKINGBYLENGTH(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLKICKINGBYLENGTH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLKICKINGBYLENGTH
        integer(kind=c_int) function TA_CDLLADDERBOTTOM(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLLADDERBOTTOM")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLLADDERBOTTOM
        integer(kind=c_int) function TA_CDLLONGLEGGEDDOJI(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLLONGLEGGEDDOJI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLLONGLEGGEDDOJI
        integer(kind=c_int) function TA_CDLLONGLINE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLLONGLINE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLLONGLINE
        integer(kind=c_int) function TA_CDLMARUBOZU(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLMARUBOZU")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLMARUBOZU

        integer(kind=c_int) function TA_CDLMATCHINGLOW(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLMATCHINGLOW")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLMATCHINGLOW
        integer(kind=c_int) function TA_CDLMATHOLD(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLMATHOLD")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLMATHOLD
        integer(kind=c_int) function TA_CDLMORNINGDOJISTAR(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLMORNINGDOJISTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLMORNINGDOJISTAR
        integer(kind=c_int) function TA_CDLMORNINGSTAR(startIdx,endIdx,open,high,low,close,optInPenetration,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLMORNINGSTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in),value::optInPenetration
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLMORNINGSTAR
        integer(kind=c_int) function TA_CDLONNECK(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLONNECK")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLONNECK

        integer(kind=c_int) function TA_CDLPIERCING(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLPIERCING")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLPIERCING
        integer(kind=c_int) function TA_CDLRICKSHAWMAN(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLRICKSHAWMAN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLRICKSHAWMAN
        integer(kind=c_int) function TA_CDLRISEFALL3METHODS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLRISEFALL3METHODS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLRISEFALL3METHODS
        integer(kind=c_int) function TA_CDLSEPARATINGLINES(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLSEPARATINGLINES")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLSEPARATINGLINES
        integer(kind=c_int) function TA_CDLSHOOTINGSTAR(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLSHOOTINGSTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLSHOOTINGSTAR
        integer(kind=c_int) function TA_CDLSHORTLINE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLSHORTLINE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLSHORTLINE
        integer(kind=c_int) function TA_CDLSPINNINGTOP(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLSPINNINGTOP")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLSPINNINGTOP
        integer(kind=c_int) function TA_CDLSTALLEDPATTERN(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLSTALLEDPATTERN")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLSTALLEDPATTERN
        integer(kind=c_int) function TA_CDLSTICKSANDWICH(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLSTICKSANDWICH")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLSTICKSANDWICH
        integer(kind=c_int) function TA_CDLTAKURI(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLTAKURI")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLTAKURI

        integer(kind=c_int) function TA_CDLTASUKIGAP(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLTASUKIGAP")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLTASUKIGAP
        integer(kind=c_int) function TA_CDLTHRUSTING(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLTHRUSTING")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLTHRUSTING
        integer(kind=c_int) function TA_CDLTRISTAR(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLTRISTAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLTRISTAR
        integer(kind=c_int) function TA_CDLUNIQUE3RIVER(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLUNIQUE3RIVER")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLUNIQUE3RIVER
        integer(kind=c_int) function TA_CDLUPSIDEGAP2CROWS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLUPSIDEGAP2CROWS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLUPSIDEGAP2CROWS
        integer(kind=c_int) function TA_CDLXSIDEGAP3METHODS(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CDLXSIDEGAP3METHODS")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CDLXSIDEGAP3METHODS

!Group: Statistic Functions

        integer(kind=c_int) function TA_BETA(startIdx,endIdx,inReal0,inReal1,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_BETA")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal0(*),inReal1(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_BETA
        integer(kind=c_int) function TA_CORREL(startIdx,endIdx,inReal0,inReal1,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_CORREL")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal0(*),inReal1(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_CORREL
        integer(kind=c_int) function TA_LINEARREG(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_LINEARREG")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_LINEARREG
        integer(kind=c_int) function TA_LINEARREG_ANGLE(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_LINEARREG_ANGLE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_LINEARREG_ANGLE
        integer(kind=c_int) function TA_LINEARREG_INTERCEPT(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_LINEARREG_INTERCEPT")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_LINEARREG_INTERCEPT
        integer(kind=c_int) function TA_LINEARREG_SLOPE(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_LINEARREG_SLOPE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_LINEARREG_SLOPE
        integer(kind=c_int) function TA_STDDEV(startIdx,endIdx,inReal,optInTimePeriod,optInNbDev,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_STDDEV")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in),value::optInNbDev
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_STDDEV
        integer(kind=c_int) function TA_TSF(startIdx,endIdx,inReal,optInTimePeriod,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_TSF")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_TSF
        integer(kind=c_int) function TA_VAR(startIdx,endIdx,inReal,optInTimePeriod,optInNbDev,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_VAR")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx,optInTimePeriod
            real(kind=c_double),intent(in),value::optInNbDev
            real(kind=c_double),intent(in)::inReal(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_VAR

!Group: Price Transform

        integer(kind=c_int) function TA_AVGPRICE(startIdx,endIdx,open,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_AVGPRICE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::open(*),high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_AVGPRICE
        integer(kind=c_int) function TA_MEDPRICE(startIdx,endIdx,high,low,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_MEDPRICE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::high(*),low(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_MEDPRICE
        integer(kind=c_int) function TA_TYPPRICE(startIdx,endIdx,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_TYPPRICE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_TYPPRICE
        integer(kind=c_int) function TA_WCLPRICE(startIdx,endIdx,high,low,close,&
        outBegIdx,outNbElement,outInteger) result(retCode) bind(C,name="TA_WCLPRICE")
            use iso_c_binding,only:c_int,c_double
            integer(kind=c_int),intent(in),value::startIdx,endIdx
            real(kind=c_double),intent(in)::high(*),low(*),close(*)
            integer(kind=c_int),intent(out)::outBegIdx,outNbElement
            integer(kind=c_int),intent(out)::outInteger(*)
        end function TA_WCLPRICE

        subroutine C_free(ptr) bind(C,name="free")
            use iso_c_binding,only:c_ptr
            type(c_ptr), value, intent(in) :: ptr
        end subroutine C_free
       
    end interface

    contains
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


    function cptr_to_fstring(cptr,size_,free) result(w)
        use iso_c_binding,only:c_int,c_ptr,c_char,c_f_pointer
        type(c_ptr),intent(in)::cptr
        integer(kind=c_int),intent(in),optional::size_
        logical,intent(in),optional::free
        character(kind=c_char,len=1),pointer::ch(:)
        character(len=:),allocatable::w
        if(present(size_)) then
            call c_f_pointer(cptr, ch,[size_])
            call cstring_to_fstring(ch,w,size_)
        else
            call c_f_pointer(cptr, ch,[1000])
            call cstring_to_fstring(ch,w)
        end if
        if(present(free) .and. free .eqv. .true.) then
            call C_free(cptr)
        end if 
    end function cptr_to_fstring
    subroutine cstring_to_fstring(cstr,fstr,clen)
        use iso_c_binding,only:c_char,c_null_char,c_int
        character(len=1,kind=c_char),intent(in)::cstr(*)
        character(len=:),allocatable,intent(inout)::fstr
        integer(kind=c_int),intent(in),optional::clen
        integer::i=1,i2
        if(present(clen)) then
            allocate(character(len=clen)::fstr)
            do i=1,clen
                fstr(i:i)=cstr(i)
            end do
        else
            do while(cstr(i)/=c_null_char)
                i=i+1
            end do
            i=i-1
            allocate(character(len=i)::fstr)
            do i2=1,i
                fstr(i2:i2)=cstr(i2)
            end do
        end if
    end subroutine cstring_to_fstring
end module talib