.class public final synthetic Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;->f$0:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;->f$0:[B

    check-cast p1, Ljava/io/PrintWriter;

    invoke-static {p0, p1}, Lcom/android/server/pm/ShortcutDumpFiles;->$r8$lambda$h1i4W_R9vmQsm2yaAuZluGHj9og([BLjava/io/PrintWriter;)V

    return-void
.end method
