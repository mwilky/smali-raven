.class public interface abstract Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SelectionListeningTextView$SelectionPathListener;
.super Ljava/lang/Object;
.source "SelectionListeningTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SelectionListeningTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectionPathListener"
.end annotation


# virtual methods
.method public abstract onSelectionPathChanged(Landroid/graphics/Path;)V
    .param p1    # Landroid/graphics/Path;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method
