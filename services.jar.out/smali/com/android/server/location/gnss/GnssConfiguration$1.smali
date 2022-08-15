.class Lcom/android/server/location/gnss/GnssConfiguration$1;
.super Ljava/util/HashMap;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final synthetic val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;


# direct methods
.method public static synthetic $r8$lambda$6ZCQVGrLnT6FCYlOMGL7BXJDaCM(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$6(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7fg3qwu5uQoXEE7_hs9ZehoVkkQ(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$3(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FYuKTRc3ofbWmsqlYyhJiMahGU4(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$5(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Hr8oFmO7hM8W-oTYKqGG7Us9Q30(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U5lAoaIrLvYjJQ1q1TEdG6hqMeo(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$4(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iIdf10sfPSYWJY1SSTbZnUe7dmw(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$2(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rmwUrms2fF3DtUx5P4ZnHEfgm6I(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->lambda$new$1(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->this$0:Lcom/android/server/location/gnss/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda0;-><init>()V

    const-string v0, "SUPL_VER"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda1;-><init>()V

    const-string v0, "SUPL_MODE"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smisConfigSuplEsSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda2;-><init>()V

    const-string v0, "SUPL_ES"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda3;-><init>()V

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda4;-><init>()V

    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda5;-><init>()V

    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smisConfigGpsLockSupported(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda6;-><init>()V

    const-string p2, "GPS_LOCK"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$0(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_supl_version(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$1(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_supl_mode(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$2(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_supl_es(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$3(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_lpp_profile(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$4(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_gnss_pos_protocol_select(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$5(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_emergency_supl_pdn(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$6(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->-$$Nest$smnative_set_gps_lock(I)Z

    move-result p0

    return p0
.end method
