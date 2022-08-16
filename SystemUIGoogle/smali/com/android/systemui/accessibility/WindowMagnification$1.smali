.class public final Lcom/android/systemui/accessibility/WindowMagnification$1;
.super Ljava/lang/Object;
.source "WindowMagnification.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/accessibility/WindowMagnification;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$1;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    iget-object p1, p1, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->mSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/accessibility/WindowMagnificationController;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIState(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnification;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method
