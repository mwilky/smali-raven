.class public abstract Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender$RemoteInputExtender;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "RemoteInputExtender"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender$RemoteInputExtender;->this$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setCallback(Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda1;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender$RemoteInputExtender;->this$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$LegacyRemoteInputLifetimeExtender;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    :cond_0
    return-void
.end method
