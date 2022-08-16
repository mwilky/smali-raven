.class public final Lcom/android/systemui/navigationbar/NavigationBarTransitions$1;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/NavigationBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBarTransitions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarTransitions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWallpaperVisibilityChanged(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iput-boolean p1, p2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    iget-object p1, p2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
