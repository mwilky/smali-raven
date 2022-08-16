.class final enum Lkotlin/collections/State;
.super Ljava/lang/Enum;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/collections/State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lkotlin/collections/State;

.field public static final enum Done:Lkotlin/collections/State;

.field public static final enum Failed:Lkotlin/collections/State;

.field public static final enum NotReady:Lkotlin/collections/State;

.field public static final enum Ready:Lkotlin/collections/State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lkotlin/collections/State;

    const/4 v1, 0x0

    const-string v2, "Ready"

    invoke-direct {v0, v1, v2}, Lkotlin/collections/State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    new-instance v2, Lkotlin/collections/State;

    const/4 v3, 0x1

    const-string v4, "NotReady"

    invoke-direct {v2, v3, v4}, Lkotlin/collections/State;-><init>(ILjava/lang/String;)V

    sput-object v2, Lkotlin/collections/State;->NotReady:Lkotlin/collections/State;

    new-instance v4, Lkotlin/collections/State;

    const/4 v5, 0x2

    const-string v6, "Done"

    invoke-direct {v4, v5, v6}, Lkotlin/collections/State;-><init>(ILjava/lang/String;)V

    sput-object v4, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    new-instance v6, Lkotlin/collections/State;

    const/4 v7, 0x3

    const-string v8, "Failed"

    invoke-direct {v6, v7, v8}, Lkotlin/collections/State;-><init>(ILjava/lang/String;)V

    sput-object v6, Lkotlin/collections/State;->Failed:Lkotlin/collections/State;

    const/4 v8, 0x4

    new-array v8, v8, [Lkotlin/collections/State;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lkotlin/collections/State;->$VALUES:[Lkotlin/collections/State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/collections/State;
    .locals 1

    const-class v0, Lkotlin/collections/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/collections/State;

    return-object p0
.end method

.method public static values()[Lkotlin/collections/State;
    .locals 1

    sget-object v0, Lkotlin/collections/State;->$VALUES:[Lkotlin/collections/State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/collections/State;

    return-object v0
.end method
