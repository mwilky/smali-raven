.class public final synthetic Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DumpHelper;->$r8$lambda$xa8hSSgBhjegHHjHRwLJEgg4JO4(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    return-void
.end method
