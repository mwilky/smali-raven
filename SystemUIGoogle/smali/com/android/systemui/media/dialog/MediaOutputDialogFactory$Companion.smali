.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;
.super Ljava/lang/Object;
.source "MediaOutputDialogFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMediaOutputDialog()Lcom/android/systemui/media/dialog/MediaOutputDialog;
    .locals 0

    invoke-static {}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->access$getMediaOutputDialog$cp()Lcom/android/systemui/media/dialog/MediaOutputDialog;

    move-result-object p0

    return-object p0
.end method

.method public final setMediaOutputDialog(Lcom/android/systemui/media/dialog/MediaOutputDialog;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->access$setMediaOutputDialog$cp(Lcom/android/systemui/media/dialog/MediaOutputDialog;)V

    return-void
.end method
