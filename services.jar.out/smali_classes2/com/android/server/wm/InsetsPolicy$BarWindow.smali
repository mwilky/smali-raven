.class public Lcom/android/server/wm/InsetsPolicy$BarWindow;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BarWindow"
.end annotation


# instance fields
.field public final mId:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsPolicy;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    iput p2, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    return-void
.end method


# virtual methods
.method public final setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmPolicy(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mId:I

    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(III)V

    :cond_1
    return-void
.end method

.method public final updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->setVisible(Z)V

    return-void
.end method
