.class public Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;
.super Ljava/lang/Object;
.source "PaymentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/PaymentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;
    }
.end annotation


# instance fields
.field private final currency:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final id:I

.field private final name:Ljava/lang/String;

.field private final price:D

.field private final status:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;DLjava/lang/String;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->id:I

    .line 72
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->name:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->description:Ljava/lang/String;

    .line 74
    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->price:D

    .line 75
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->currency:Ljava/lang/String;

    .line 76
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->status:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    .line 77
    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->price:D

    return-wide v0
.end method

.method public getStatus()Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->status:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    return-object v0
.end method
