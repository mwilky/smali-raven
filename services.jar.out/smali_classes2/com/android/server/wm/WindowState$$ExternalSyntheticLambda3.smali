.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsState;

.field public final synthetic f$1:Landroid/util/ArraySet;

.field public final synthetic f$2:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$0:Landroid/view/InsetsState;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$1:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$2:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$0:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$1:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda3;->f$2:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/WindowState;->$r8$lambda$yaMCE92DeyOeXwsfF1GkAkI6k2I(Landroid/view/InsetsState;Landroid/util/ArraySet;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
