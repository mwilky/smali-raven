.class public final synthetic Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Lcom/android/wm/shell/apppairs/AppPairsController;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/apppairs/AppPairsController;->unpair(IZ)V

    return-void
.end method
