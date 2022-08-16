.class public final Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;
.super Ljava/lang/Object;
.source "UnfoldTransitionWallpaperController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final unfoldTransitionProgressProvider:Ljavax/inject/Provider;

.field public final wallpaperControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/WallpaperController;

    new-instance v1, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;Lcom/android/systemui/util/WallpaperController;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->unfoldTransitionProgressProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;->wallpaperControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
