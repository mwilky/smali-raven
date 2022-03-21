.class public final Lcom/android/settings/network/telephony/CellInfoUtil;
.super Ljava/lang/Object;
.source "CellInfoUtil.java"


# direct methods
.method public static synthetic $r8$lambda$ZY4BpcK65oTKFq16qW3NHKFg6pk(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->lambda$cellInfoListToString$0(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cellInfoListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/telephony/CellInfoUtil$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/network/telephony/CellInfoUtil$$ExternalSyntheticLambda0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMcc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v4, v0

    const/4 p0, 0x2

    aput-object v2, v4, p0

    const/4 p0, 0x3

    aput-object v3, v4, p0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x4

    aput-object p0, v4, v0

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x5

    aput-object p0, v4, v0

    const-string/jumbo p0, "{CellType = %s, isRegistered = %b, mcc = %s, mnc = %s, alphaL = %s, alphaS = %s}"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertOperatorInfoToCellInfo(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "^[0-9]{5,6}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, v1

    move-object v8, v7

    :goto_0
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance p0, Landroid/telephony/CellInfoGsm;

    invoke-direct {p0}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-virtual {p0, v0}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    return-object p0
.end method

.method public static getCellIdentity(Landroid/telephony/CellInfo;)Landroid/telephony/CellIdentity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, p0, Landroid/telephony/CellInfoTdscdma;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/telephony/CellInfoTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v1, p0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_5

    check-cast p0, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v1, p0, Landroid/telephony/CellInfoNr;

    if-eqz v1, :cond_6

    check-cast p0, Landroid/telephony/CellInfoNr;

    invoke-virtual {p0}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static getCellIdentityMcc(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static getCellIdentityMccMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMcc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getCellIdentityMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    instance-of v1, p0, Landroid/telephony/CellIdentityGsm;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/telephony/CellIdentityWcdma;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, Landroid/telephony/CellIdentityTdscdma;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v1, p0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static getNetworkTitle(Landroid/telephony/CellIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p0

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$cellInfoListToString$0(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoToString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
