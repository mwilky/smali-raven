.class final synthetic Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$attach$1;
.super Ljava/lang/Object;
.source "ShadeViewManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$OnRenderListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->attach(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->access$onNewNotifTree(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;Ljava/util/List;)V

    return-void
.end method
