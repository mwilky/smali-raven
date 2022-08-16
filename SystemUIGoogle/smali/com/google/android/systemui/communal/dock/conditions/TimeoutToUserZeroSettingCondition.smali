.class public final Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;
.super Lcom/android/systemui/util/condition/Condition;
.source "TimeoutToUserZeroSettingCondition.java"


# instance fields
.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSettingContentObserver:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;

.field public final mTimeoutDurationSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/util/condition/Condition;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mTimeoutDurationSettingProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mUserIdProvider:Ljavax/inject/Provider;

    new-instance p2, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;-><init>(Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSettingContentObserver:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSettingContentObserver:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;->onChange(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSettingContentObserver:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mUserIdProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string/jumbo v2, "timeout_to_user_zero"

    invoke-interface {v0, v2, v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mSettingContentObserver:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
