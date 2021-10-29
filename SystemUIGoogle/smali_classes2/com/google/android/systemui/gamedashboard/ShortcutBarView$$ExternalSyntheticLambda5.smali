.class public final synthetic Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

.field public final synthetic f$1:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

.field public final synthetic f$2:Lcom/android/internal/util/ScreenshotHelper;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$1:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$2:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$3:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$1:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$2:Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;->f$3:Landroid/os/Handler;

    check-cast p1, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->$r8$lambda$Fh0qqHOrCRyAPxOwTOotkeZNydM(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V

    return-void
.end method
