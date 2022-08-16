.class final synthetic Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ColorSchemeTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/monet/ColorScheme;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;

    invoke-direct {v0}, Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Landroidx/cardview/widget/CardViewApi21Impl;

    const/4 v1, 0x1

    const-string/jumbo v3, "textTertiaryFromScheme"

    const-string/jumbo v4, "textTertiaryFromScheme(Lcom/android/systemui/monet/ColorScheme;)I"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    iget-object p0, p1, Lcom/android/systemui/monet/ColorScheme;->neutral2:Ljava/util/ArrayList;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
