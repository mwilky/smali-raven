.class public final enum Lcom/android/systemui/qs/QSEditEvent;
.super Ljava/lang/Enum;
.source "QSEvents.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/QSEditEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

.field public static final enum QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;


# instance fields
.field private final _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/qs/QSEditEvent;

    const-string v1, "QS_EDIT_REMOVE"

    const/4 v2, 0x0

    const/16 v3, 0xd2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v1, Lcom/android/systemui/qs/QSEditEvent;

    const-string v3, "QS_EDIT_ADD"

    const/4 v4, 0x1

    const/16 v5, 0xd3

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v3, Lcom/android/systemui/qs/QSEditEvent;

    const-string v5, "QS_EDIT_MOVE"

    const/4 v6, 0x2

    const/16 v7, 0xd4

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v5, Lcom/android/systemui/qs/QSEditEvent;

    const-string v7, "QS_EDIT_OPEN"

    const/4 v8, 0x3

    const/16 v9, 0xd5

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v7, Lcom/android/systemui/qs/QSEditEvent;

    const-string v9, "QS_EDIT_CLOSED"

    const/4 v10, 0x4

    const/16 v11, 0xd6

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    new-instance v9, Lcom/android/systemui/qs/QSEditEvent;

    const-string v11, "QS_EDIT_RESET"

    const/4 v12, 0x5

    const/16 v13, 0xd7

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/qs/QSEditEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/systemui/qs/QSEditEvent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/systemui/qs/QSEditEvent;->$VALUES:[Lcom/android/systemui/qs/QSEditEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/qs/QSEditEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSEditEvent;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/qs/QSEditEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSEditEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/QSEditEvent;
    .locals 4

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->$VALUES:[Lcom/android/systemui/qs/QSEditEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/systemui/qs/QSEditEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSEditEvent;->_id:I

    return p0
.end method
