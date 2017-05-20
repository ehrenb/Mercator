.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "EmptyDisplayable.java"


# instance fields
.field private spanSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;->spanSize:I

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;->spanSize:I

    .line 22
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;->spanSize:I

    .line 23
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getDefaultPerLineCount()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;->spanSize:I

    return v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_empty:I

    return v0
.end method
