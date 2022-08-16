.class public final enum Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;
.super Ljava/lang/Enum;
.source "BouncerSwipeTouchHandler.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DreamEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

.field public static final enum DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

.field public static final enum DREAM_SWIPED:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    const-string v1, "DREAM_SWIPED"

    const/4 v2, 0x0

    const/16 v3, 0x3dc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_SWIPED:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    new-instance v1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    const-string v3, "DREAM_BOUNCER_FULLY_VISIBLE"

    const/4 v4, 0x1

    const/16 v5, 0x420

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->$VALUES:[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->$VALUES:[Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    invoke-virtual {v0}, [Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->mId:I

    return p0
.end method
