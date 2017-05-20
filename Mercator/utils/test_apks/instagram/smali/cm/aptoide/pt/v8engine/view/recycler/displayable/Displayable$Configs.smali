.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
.super Ljava/lang/Object;
.source "Displayable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configs"
.end annotation


# instance fields
.field private final defaultPerLineCount:I

.field private final fixedPerLineCount:Z

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->this$0:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->defaultPerLineCount:I

    .line 123
    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->fixedPerLineCount:Z

    .line 124
    return-void
.end method


# virtual methods
.method public getDefaultPerLineCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->defaultPerLineCount:I

    return v0
.end method

.method public isFixedPerLineCount()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;->fixedPerLineCount:Z

    return v0
.end method
