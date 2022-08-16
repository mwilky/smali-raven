.class final Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaDataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->createActionsFromState(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/MediaButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/media/session/PlaybackState$CustomAction;",
        "Lcom/android/systemui/media/MediaAction;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $controller:Landroid/media/session/MediaController;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $state:Landroid/media/session/PlaybackState;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;Landroid/media/session/PlaybackState;Ljava/lang/String;Landroid/media/session/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->$state:Landroid/media/session/PlaybackState;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->$controller:Landroid/media/session/MediaController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/media/session/PlaybackState$CustomAction;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromState$customActions$1;->$controller:Landroid/media/session/MediaController;

    sget v2, Lcom/android/systemui/media/MediaDataManager;->MAX_NOTIFICATION_ACTIONS:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/media/MediaAction;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;-><init>(Landroid/media/session/MediaController;Landroid/media/session/PlaybackState$CustomAction;)V

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/android/systemui/media/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method
