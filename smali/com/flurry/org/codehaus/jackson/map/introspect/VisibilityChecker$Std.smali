.class public Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"

# interfaces
.implements Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;
    creatorVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    fieldVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    getterVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    isGetterVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    setterVisibility = .enum Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;


# instance fields
.field protected final _creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field protected final _setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    new-instance v1, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    const-class v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    const-class v2, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;

    invoke-direct {v1, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;)V

    sput-object v1, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V
    .locals 1
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 229
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 230
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 231
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 232
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 233
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v0, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 236
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 237
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 238
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 239
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V
    .locals 0
    .param p1, "getter"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .param p2, "isGetter"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .param p3, "setter"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .param p4, "creator"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .param p5, "field"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 211
    iput-object p2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 212
    iput-object p3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 213
    iput-object p4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 214
    iput-object p5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;)V
    .locals 2
    .param p1, "ann"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->value()[Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    move-result-object v0

    .line 198
    .local v0, "incl":[Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->getterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 199
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->isGetterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 200
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->setterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 201
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->creatorVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 202
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->fieldVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 203
    return-void

    .line 198
    :cond_0
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_1

    .line 200
    :cond_2
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_2

    .line 201
    :cond_3
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_3

    .line 202
    :cond_4
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_4
.end method

.method public static defaultInstance()Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    return-object v0
.end method

.method private static hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z
    .locals 5
    .param p0, "methods"    # [Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    .param p1, "method"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "arr$":[Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 403
    .local v1, "curr":Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    if-eq v1, p1, :cond_0

    sget-object v4, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 405
    .end local v1    # "curr":Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    :goto_1
    return v4

    .line 402
    .restart local v1    # "curr":Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v1    # "curr":Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isCreatorVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .prologue
    .line 351
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isCreatorVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isCreatorVisible(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isFieldVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .param p1, "f"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isFieldVisible(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public isFieldVisible(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isGetterVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isIsGetterVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isIsGetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isIsGetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public isSetterVisible(Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "m"    # Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->isSetterVisible(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public isSetterVisible(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->isVisible(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Visibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " getter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGetter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 1
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 275
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    .line 276
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    invoke-direct {v0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    goto :goto_0
.end method

.method public with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 4
    .param p1, "ann"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 269
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .line 254
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :cond_0
    move-object v0, p0

    .line 256
    .local v0, "curr":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->value()[Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    move-result-object v1

    .line 259
    .local v1, "incl":[Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    sget-object v3, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->GETTER:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->getterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 260
    .local v2, "v":Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    :goto_1
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 261
    sget-object v3, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->IS_GETTER:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->isGetterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 262
    :goto_2
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 263
    sget-object v3, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->SETTER:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->setterVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 264
    :goto_3
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 265
    sget-object v3, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->CREATOR:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->creatorVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 266
    :goto_4
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    .line 267
    sget-object v3, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->FIELD:Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;

    invoke-static {v1, v3}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->hasMethod([Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;->fieldVisibility()Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-result-object v2

    .line 268
    :goto_5
    invoke-virtual {v0, v2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    move-object p0, v0

    .line 269
    goto :goto_0

    .line 259
    .end local v2    # "v":Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    :cond_1
    sget-object v2, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_1

    .line 261
    .restart local v2    # "v":Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    :cond_2
    sget-object v2, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_2

    .line 263
    :cond_3
    sget-object v2, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_3

    .line 265
    :cond_4
    sget-object v2, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_4

    .line 267
    :cond_5
    sget-object v2, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    goto :goto_5
.end method

.method public bridge synthetic with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withCreatorVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 326
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 328
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withCreatorVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withFieldVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 333
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 335
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withFieldVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 305
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 307
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withIsGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 312
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 314
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withIsGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withSetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 6
    .param p1, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 319
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->DEFAULT:Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object p1, v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_setterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    if-ne v0, p1, :cond_1

    .line 321
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :cond_1
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_getterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v2, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_isGetterMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v4, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_creatorMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    iget-object v5, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->_fieldMinLevel:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;-><init>(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withSetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method

.method public withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    .locals 2
    .param p1, "method"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    .param p2, "v"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 284
    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonMethod:[I

    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 300
    .end local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :goto_0
    return-object p0

    .line 286
    .restart local p0    # "this":Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withSetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withCreatorVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 292
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withFieldVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 294
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withIsGetterVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 296
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->with(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object p0

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .param p1, "x0"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;
    .param p2, "x1"    # Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;->withVisibility(Lcom/flurry/org/codehaus/jackson/annotate/JsonMethod;Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;

    move-result-object v0

    return-object v0
.end method
