.class public final Lcom/android/keyguard/clock/ClockManager$AvailableClocks;
.super Ljava/lang/Object;
.source "ClockManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/ClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AvailableClocks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/ClockPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field public final mClockInfo:Ljava/util/ArrayList;

.field public final mClocks:Landroid/util/ArrayMap;

.field public mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

.field public final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/ClockPlugin;)V

    new-instance v5, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/ClockPlugin;)V

    new-instance v6, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V

    new-instance p0, Lcom/android/keyguard/clock/ClockInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/clock/ClockInfo;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    iget-object p2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez p2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    :cond_3
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/clock/ClockInfo;

    iget-object v3, v3, Lcom/android/keyguard/clock/ClockInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    if-ne p1, v3, :cond_3

    move v1, v2

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    :cond_5
    return-void
.end method

.method public final reloadCurrentClock()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    iget-object v1, v0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    iget-object v0, v0, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Lcom/android/systemui/settings/CurrentUserObservable$1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v1, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "docked_clock_face"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    iget-object v2, v1, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    iget-object v1, v1, Lcom/android/keyguard/clock/ClockManager;->mCurrentUserObservable:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Lcom/android/systemui/settings/CurrentUserObservable$1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_custom_clock_face"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/keyguard/clock/SettingsWrapper;->decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    return-void
.end method
