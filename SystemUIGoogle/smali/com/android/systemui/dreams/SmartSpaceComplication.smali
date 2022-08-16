.class public final Lcom/android/systemui/dreams/SmartSpaceComplication;
.super Ljava/lang/Object;
.source "SmartSpaceComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;,
        Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/dreams/SmartSpaceComplication;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;
    .locals 1

    new-instance p1, Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;

    iget-object v0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;-><init>(Landroid/content/Context;Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    return-object p1
.end method
