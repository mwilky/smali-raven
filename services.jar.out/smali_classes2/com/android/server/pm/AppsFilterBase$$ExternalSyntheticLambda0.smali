.class public final synthetic Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/AppsFilterBase$ToString;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lcom/android/internal/util/function/QuadFunction;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/util/function/QuadFunction;

    return-void
.end method


# virtual methods
.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$1:[I

    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/util/function/QuadFunction;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/AppsFilterBase;->$r8$lambda$lu5M3otBdpphG02wcBObYEz_REA(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
