.class final enum Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;
.super Ljava/lang/Enum;
.source "EnableSmartForwardingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FailedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

.field public static final enum NETWORK_ERROR:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

.field public static final enum SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->NETWORK_ERROR:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    new-instance v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    const-string v3, "SIM_NOT_ACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->$VALUES:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;
    .locals 1

    const-class v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;
    .locals 1

    sget-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->$VALUES:[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    invoke-virtual {v0}, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    return-object v0
.end method
