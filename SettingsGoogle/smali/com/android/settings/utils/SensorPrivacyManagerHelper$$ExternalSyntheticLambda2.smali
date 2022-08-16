.class public final synthetic Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    iput p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    iget v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->$r8$lambda$hiZuP0e6WH5O4Mwstq1t1p7vRts(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;IZ)V

    return-void
.end method
