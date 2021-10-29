.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda6;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda6;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/wm/shell/ShellCommandHandler;

    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->$r8$lambda$0GlPp1cqdMec6wNfFbut6h0x-Ko(Ljava/io/PrintWriter;Lcom/android/wm/shell/ShellCommandHandler;)V

    return-void
.end method
