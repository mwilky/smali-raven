.class final Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;->this$0:Lcom/android/systemui/controls/management/ControlAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlAdapter$onCreateViewHolder$2;->this$0:Lcom/android/systemui/controls/management/ControlAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlAdapter;->model:Lcom/android/systemui/controls/management/ControlsModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/controls/management/ControlsModel;->changeFavoriteStatus(Ljava/lang/String;Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
