.class public final synthetic Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    iput p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    iget p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->$r8$lambda$37ZieiPVCEdfN7zV9VGB8OJRfZ4(Lcom/android/settings/utils/SensorPrivacyManagerHelper;IIZ)V

    return-void
.end method
