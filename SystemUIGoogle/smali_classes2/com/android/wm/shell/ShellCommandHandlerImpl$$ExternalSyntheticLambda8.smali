.class public final synthetic Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda8;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda8;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellCommandHandlerImpl;->$r8$lambda$LVx8Jy_pW3HmwNiqyapx7bDfxSo(Ljava/io/PrintWriter;Lcom/android/wm/shell/onehanded/OneHandedController;)V

    return-void
.end method
