.class final Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RenderInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/RenderInfoKt;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;->INSTANCE:Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)I
    .locals 0

    sget p0, Lcom/android/systemui/R$drawable;->ic_device_unknown:I

    return p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/RenderInfoKt$deviceIconMap$1;->invoke(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
