.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;->f$0:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$BTt86GxVJr-ItmwZWzTvQXwlhXM(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
