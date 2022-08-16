.class public final Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "LockscreenTargetFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;-><init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/concurrency/Execution;Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;->this$0:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;->this$0:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;

    iget-object p1, p1, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {p1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object p0, p0, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter$settingsObserver$1;->this$0:Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;

    invoke-virtual {p0}, Lcom/android/systemui/smartspace/filters/LockscreenTargetFilter;->updateUserContentSettings()V

    return-void
.end method
