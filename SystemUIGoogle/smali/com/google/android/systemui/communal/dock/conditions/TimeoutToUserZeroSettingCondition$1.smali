.class public final Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;
.super Landroid/database/ContentObserver;
.source "TimeoutToUserZeroSettingCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;->this$0:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition$1;->this$0:Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;->mTimeoutDurationSettingProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/condition/Condition;->updateCondition(Z)V

    return-void
.end method
