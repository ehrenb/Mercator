.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "MessageWhiteBgDisplayable.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 17
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;->message:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 21
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->white_message_displayable:I

    return v0
.end method
