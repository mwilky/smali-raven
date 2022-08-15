.class public final synthetic Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LetterboxUiController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LetterboxUiController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LetterboxUiController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LetterboxUiController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/LetterboxUiController;

    invoke-static {p0}, Lcom/android/server/wm/LetterboxUiController;->$r8$lambda$OA0yd67wVO249Te3u1OaGYhIhGI(Lcom/android/server/wm/LetterboxUiController;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method
