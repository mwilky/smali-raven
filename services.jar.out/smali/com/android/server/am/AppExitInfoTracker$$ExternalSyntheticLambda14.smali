.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Landroid/icu/text/SimpleDateFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iput-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$2:Landroid/icu/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$1:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;->f$2:Landroid/icu/text/SimpleDateFormat;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$Rn5VI7ZbWhrtBhGAhWXKmCTWTz8(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
