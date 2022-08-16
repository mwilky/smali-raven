.class public final Lcom/android/systemui/qs/QSFgsManagerFooter;
.super Ljava/lang/Object;
.source "QSFgsManagerFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;
.implements Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;


# instance fields
.field public final mCollapsedDotView:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mDotView:Landroid/widget/ImageView;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

.field public final mFooterText:Landroid/widget/TextView;

.field public mIsInitialized:Z

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mNumPackages:I

.field public final mNumberContainer:Landroid/view/View;

.field public final mNumberView:Landroid/widget/TextView;

.field public final mRootView:Landroid/view/View;

.field public final mTextContainer:Landroid/view/View;

.field public mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/qs/FgsManagerController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mIsInitialized:Z

    iput-object p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    const v0, 0x7f0b02a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFooterText:Landroid/widget/TextView;

    const v0, 0x7f0b028f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mTextContainer:Landroid/view/View;

    const v0, 0x7f0b028e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumberContainer:Landroid/view/View;

    const v0, 0x7f0b028d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumberView:Landroid/widget/TextView;

    const v0, 0x7f0b028c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mDotView:Landroid/widget/ImageView;

    const v0, 0x7f0b0287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mCollapsedDotView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/FgsManagerController;->showDialog(Landroid/view/View;)V

    return-void
.end method

.method public final onDialogDismissed()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNumberOfPackagesChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumPackages:I

    iget-object p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
