.class public final Lcom/google/android/material/internal/CheckableGroup$1;
.super Ljava/lang/Object;
.source "CheckableGroup.java"

# interfaces
.implements Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/CheckableGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CheckableGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Ljava/lang/Object;Z)V
    .locals 1

    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    iget-boolean v0, p2, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    iget-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/HashSet;

    invoke-direct {p2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast p1, Lcom/google/android/material/chip/ChipGroup$1;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup$1;->onCheckedStateChanged()V

    :cond_1
    return-void
.end method
