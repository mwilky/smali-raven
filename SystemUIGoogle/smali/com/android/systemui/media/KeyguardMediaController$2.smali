.class public final Lcom/android/systemui/media/KeyguardMediaController$2;
.super Ljava/lang/Object;
.source "KeyguardMediaController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/KeyguardMediaController;-><init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/KeyguardMediaController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController$2;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController$2;->this$0:Lcom/android/systemui/media/KeyguardMediaController;

    iget-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShade:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShade:Z

    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->reattachHostView()V

    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    :goto_0
    return-void
.end method
