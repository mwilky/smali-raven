.class public final synthetic Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/privacy/SensorToggleController;

.field public final synthetic f$1:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privacy/SensorToggleController;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privacy/SensorToggleController;

    iput-object p2, p0, Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final onSensorPrivacyChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privacy/SensorToggleController;

    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/privacy/SensorToggleController;->$r8$lambda$lOQAaRp7mNyiBqL4JmZ7m-6RCjM(Lcom/android/settings/privacy/SensorToggleController;Landroidx/preference/PreferenceScreen;IZ)V

    return-void
.end method
