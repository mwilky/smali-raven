.class public final synthetic Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Matrix;

.field public final synthetic f$1:Landroid/graphics/Matrix;

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Matrix;

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->$r8$lambda$GLgRVsQmPs45pA-yX7ZcJZ6VqzU(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    return-void
.end method
