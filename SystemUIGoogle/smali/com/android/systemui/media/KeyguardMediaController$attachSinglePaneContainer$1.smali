.class final synthetic Lcom/android/systemui/media/KeyguardMediaController$attachSinglePaneContainer$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "KeyguardMediaController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/KeyguardMediaController;->attachSinglePaneContainer(Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 7

    const-class v3, Lcom/android/systemui/media/KeyguardMediaController;

    const/4 v1, 0x1

    const-string v4, "onMediaHostVisibilityChanged"

    const-string v5, "onMediaHostVisibilityChanged(Z)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/KeyguardMediaController$attachSinglePaneContainer$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/media/KeyguardMediaController;

    invoke-static {p0, p1}, Lcom/android/systemui/media/KeyguardMediaController;->access$onMediaHostVisibilityChanged(Lcom/android/systemui/media/KeyguardMediaController;Z)V

    return-void
.end method
