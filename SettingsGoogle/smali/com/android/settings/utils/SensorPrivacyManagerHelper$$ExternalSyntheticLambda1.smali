.class public final synthetic Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/SensorPrivacyManagerHelper;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    iput p2, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    iget v1, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/settings/utils/SensorPrivacyManagerHelper$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->$r8$lambda$c_SGg4Bm-3VqeJC7-H4hxuWIsIk(Lcom/android/settings/utils/SensorPrivacyManagerHelper;IIIZ)V

    return-void
.end method
