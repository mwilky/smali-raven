.class final Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lcom/android/systemui/media/MediaDeviceManager$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $args:[Ljava/lang/String;

.field final synthetic $fd:Ljava/io/FileDescriptor;

.field final synthetic $pw:Ljava/io/PrintWriter;

.field final synthetic $this_with:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$this_with:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$fd:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$pw:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->accept(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceManager$Entry;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceManager$Entry;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$this_with:Ljava/io/PrintWriter;

    const-string v1, "  key="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$fd:Ljava/io/FileDescriptor;

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$pw:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$dump$1$1;->$args:[Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
