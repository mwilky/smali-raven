.class public final synthetic Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;->f$0:I

    iput p2, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;->f$0:I

    iget p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->$r8$lambda$qpfKMCh0g_Rju-etjOBXmuiU4yA(IILcom/android/wm/shell/apppairs/AppPairsController;)V

    return-void
.end method
