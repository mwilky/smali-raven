.class public final synthetic Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field public final synthetic f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

.field public final synthetic f$2:Lcom/google/android/systemui/smartspace/SmartSpaceCard;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v1, Lcom/google/android/systemui/smartspace/NewCardInfo;->mIsPrimary:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p0, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p0, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    :goto_0
    iget-object p0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method
