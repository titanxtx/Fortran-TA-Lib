#include <stdlib.h>
#include <string.h>
#include "ta-lib/ta_libc.h"

char* TA_GetVersionString_(int *len)
{
    *len=strlen(TA_GetVersionString());
    return (char*)TA_GetVersionString();
}
char* TA_GetVersionMajor_(int *len)
{
    *len=strlen(TA_GetVersionMajor());
    return (char*)TA_GetVersionMajor();
}
char* TA_GetVersionMinor_(int *len)
{
    *len=strlen(TA_GetVersionMinor());
    return (char*)TA_GetVersionMinor();
}
char* TA_GetVersionBuild_(int *len)
{
    *len=strlen(TA_GetVersionBuild());
    return (char*)TA_GetVersionBuild();
}
char* TA_GetVersionDate_(int *len)
{
    *len=strlen(TA_GetVersionDate());
    return (char*)TA_GetVersionDate();
}
char* TA_GetVersionTime_(int *len)
{
    *len=strlen(TA_GetVersionTime());
    return (char*)TA_GetVersionTime();
}

//default values
int int_def()
{
    return TA_INTEGER_DEFAULT;
}
double real_def()
{
    return TA_REAL_DEFAULT;
}

//TA_MAType values
int TA_MAType_SMA_()
{
    return TA_MAType_SMA;
}
int TA_MAType_EMA_()
{
    return TA_MAType_EMA;
}
int TA_MAType_WMA_()
{
    return TA_MAType_WMA;
}
int TA_MAType_DEMA_()
{
    return TA_MAType_DEMA;
}
int TA_MAType_TEMA_()
{
    return TA_MAType_TEMA;
}
int TA_MAType_TRIMA_()
{
    return TA_MAType_TRIMA;
}
int TA_MAType_KAMA_()
{
    return TA_MAType_KAMA;
}
int TA_MAType_MAMA_()
{
    return TA_MAType_MAMA;
}
int TA_MAType_T3_()
{
    return TA_MAType_T3;
}

//retCode values
int TA_SUCCESS_()
{
    return TA_SUCCESS;
}
int TA_LIB_NOT_INITIALIZE_()
{
    return TA_LIB_NOT_INITIALIZE;
}
int TA_BAD_PARAM_()
{
    return TA_BAD_PARAM;
}
int TA_ALLOC_ERR_()
{
    return TA_ALLOC_ERR;
}
int TA_GROUP_NOT_FOUND_()
{
    return TA_GROUP_NOT_FOUND;
}
int TA_FUNC_NOT_FOUND_()
{
    return TA_FUNC_NOT_FOUND;
}
int TA_INVALID_HANDLE_()
{
    return TA_INVALID_HANDLE;
}
int TA_INVALID_PARAM_HOLDER_()
{
    return TA_INVALID_PARAM_HOLDER;
}
int TA_INVALID_PARAM_HOLDER_TYPE_()
{
    return TA_INVALID_PARAM_HOLDER_TYPE;
}
int TA_INVALID_PARAM_FUNCTION_()
{
    return TA_INVALID_PARAM_FUNCTION;
}
int TA_INPUT_NOT_ALL_INITIALIZE_()
{
    return TA_INPUT_NOT_ALL_INITIALIZE;
}
int TA_OUTPUT_NOT_ALL_INITIALIZE_()
{
    return TA_OUTPUT_NOT_ALL_INITIALIZE;
}
int TA_OUT_OF_RANGE_START_INDEX_()
{
    return TA_OUT_OF_RANGE_START_INDEX;
}
int TA_OUT_OF_RANGE_END_INDEX_()
{
    return TA_OUT_OF_RANGE_END_INDEX;
}
int TA_INVALID_LIST_TYPE_()
{
    return TA_INVALID_LIST_TYPE;
}
int TA_BAD_OBJECT_()
{
    return TA_BAD_OBJECT;
}
int TA_NOT_SUPPORTED_()
{
    return TA_NOT_SUPPORTED;
}
int TA_INTERNAL_ERROR_()
{
    return TA_INTERNAL_ERROR;
}
int TA_UNKNOWN_ERR_()
{
    return TA_UNKNOWN_ERR;
}

//TA_SetUnstablePeriod and TA_GetUnstablePeriod function id constants

int TA_FUNC_UNST_ADX_()
{
    return TA_FUNC_UNST_ADX;
}
int TA_FUNC_UNST_ADXR_()
{
	return TA_FUNC_UNST_ADXR;
}
int TA_FUNC_UNST_ATR_()
{
	return TA_FUNC_UNST_ATR;
}
int TA_FUNC_UNST_CMO_()
{
	return TA_FUNC_UNST_CMO;
}
int TA_FUNC_UNST_DX_()
{
	return TA_FUNC_UNST_DX;
}
int TA_FUNC_UNST_EMA_()
{
	return TA_FUNC_UNST_EMA;
}
int TA_FUNC_UNST_HT_DCPERIOD_()
{
	return TA_FUNC_UNST_HT_DCPERIOD;
}
int TA_FUNC_UNST_HT_DCPHASE_()
{
	return TA_FUNC_UNST_HT_DCPHASE;
}
int TA_FUNC_UNST_HT_PHASOR_()
{
	return TA_FUNC_UNST_HT_PHASOR;
}
int TA_FUNC_UNST_HT_SINE_()
{
	return TA_FUNC_UNST_HT_SINE;
}
int TA_FUNC_UNST_HT_TRENDLINE_()
{
	return TA_FUNC_UNST_HT_TRENDLINE;
}
int TA_FUNC_UNST_HT_TRENDMODE_()
{
	return TA_FUNC_UNST_HT_TRENDMODE;
}
int TA_FUNC_UNST_KAMA_()
{
	return TA_FUNC_UNST_KAMA;
}
int TA_FUNC_UNST_MAMA_()
{
	return TA_FUNC_UNST_MAMA;
}
int TA_FUNC_UNST_MFI_()
{
	return TA_FUNC_UNST_MFI;
}
int TA_FUNC_UNST_MINUS_DI_()
{
	return TA_FUNC_UNST_MINUS_DI;
}
int TA_FUNC_UNST_MINUS_DM_()
{
	return TA_FUNC_UNST_MINUS_DM;
}
int TA_FUNC_UNST_NATR_()
{
	return TA_FUNC_UNST_NATR;
}
int TA_FUNC_UNST_PLUS_DI_()
{
	return TA_FUNC_UNST_PLUS_DI;
}
int TA_FUNC_UNST_PLUS_DM_()
{
	return TA_FUNC_UNST_PLUS_DM;
}
int TA_FUNC_UNST_RSI_()
{
	return TA_FUNC_UNST_RSI;
}
int TA_FUNC_UNST_STOCHRSI_()
{
	return TA_FUNC_UNST_STOCHRSI;
}
int TA_FUNC_UNST_T3_()
{
	return TA_FUNC_UNST_T3;
}
int TA_FUNC_UNST_ALL_()
{
	return TA_FUNC_UNST_ALL;
}
int TA_FUNC_UNST_NONE_()
{
	return TA_FUNC_UNST_NONE;
}

//TA_SetCompatibility and TA_GetCompatibility constant values
int TA_COMPATIBILITY_DEFAULT_()
{
	return TA_COMPATIBILITY_DEFAULT;
}
int TA_COMPATIBILITY_METASTOCK_()
{
	return TA_COMPATIBILITY_METASTOCK;
}

//TA_SetCandleSettings and TA_RestoreCandleDefaultSettings setting/rangetype constants

//valid settingType values
int TA_BodyLong_()
{
	return TA_BodyLong;
}
int TA_BodyVeryLong_()
{
	return TA_BodyVeryLong;
}
int TA_BodyShort_()
{
	return TA_BodyShort;
}
int TA_BodyDoji_()
{
	return TA_BodyDoji;
}
int TA_ShadowLong_()
{
	return TA_ShadowLong;
}
int TA_ShadowVeryLong_()
{
	return TA_ShadowVeryLong;
}
int TA_ShadowShort_()
{
	return TA_ShadowShort;
}
int TA_ShadowVeryShort_()
{
	return TA_ShadowVeryShort;
}
int TA_Near_()
{
	return TA_Near;
}
int TA_Far_()
{
	return TA_Far;
}
int TA_Equal_()
{
	return TA_Equal;
}
int TA_AllCandleSettings_()
{
	return TA_AllCandleSettings;
}
 
//valid rangeType values
int TA_RangeType_RealBody_()
{
	return TA_RangeType_RealBody;
}
int TA_RangeType_HighLow_()
{
	return TA_RangeType_HighLow;
}
int TA_RangeType_Shadows_()
{
	return TA_RangeType_Shadows;
}