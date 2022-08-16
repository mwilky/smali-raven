.class public final Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManagerGoogle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;->this$0:Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle$1;->this$0:Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;

    invoke-virtual {p0}, Lcom/google/android/systemui/NotificationLockscreenUserManagerGoogle;->updateSmartSpaceVisibilitySettings()V

    return-void
.end method
