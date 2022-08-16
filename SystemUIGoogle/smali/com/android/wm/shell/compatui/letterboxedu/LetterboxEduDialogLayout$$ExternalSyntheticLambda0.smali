.class public final synthetic Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    sget p1, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->$r8$clinit:I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
