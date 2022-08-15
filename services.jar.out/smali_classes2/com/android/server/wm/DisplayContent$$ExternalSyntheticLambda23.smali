.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Landroid/graphics/Matrix;

.field public final synthetic f$3:[F


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$2:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$3:[F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$2:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda23;->f$3:[F

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$dkENMHpqszdx5YfD4UVvnbxTeM4(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[FLcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
